import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/domain/ride/model.dart';
import 'package:prigorod/domain/user/model.dart';
import 'package:prigorod/presentation/theme.dart';
import 'package:prigorod/presentation/trip/controller.dart';
import 'package:prigorod/presentation/widgets.dart';
import 'package:prigorod/services/providers.dart';
import 'package:prigorod/services/router/router.dart';

@RoutePage()
class TripPage extends HookConsumerWidget {
  final Trip trip;
  const TripPage(this.trip, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passengersList = useState([]);
    final visibility = useState(!trip.is_full);
    final seatsUsed = useState(0);

    ref.listen(tripPassengersProvider(trip.id), (previous, next) {
      if (next.value != null) {
        if (ref.read(userProvider) is Driver) {
          passengersList.value = next.value!.tickets;
        }
        seatsUsed.value = next.value!.reserved_seats;
        if (trip.runtimeType != next.value.runtimeType) {
          router.replace(TripRoute(trip: next.value!));
        }
      }
    });
    return Scaffold(
        appBar: AppBar(
          actions: const [],
        ),
        body: Container(
          height: screenHeight(context),
          width: screenWidth(context),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colour.lightYellow),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "ЕГЖЕЙ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextField(
                          style: const TextStyle(color: Colors.black),
                          enabled: false,
                          controller: TextEditingController(
                              text: "${trip.from} дейін ${trip.to}"),
                          decoration:
                              const InputDecoration(labelText: "Маршрут"),
                        ),
                        TextField(
                          style: const TextStyle(color: Colors.black),
                          enabled: false,
                          controller: TextEditingController(
                              text: formatDateTime(trip.departure_time)),
                          decoration: const InputDecoration(labelText: "Кесте"),
                        ),
                        TextField(
                          style: const TextStyle(color: Colors.black),
                          enabled: false,
                          controller: TextEditingController(
                              text: trip.seat_price.toString()),
                          decoration: const InputDecoration(
                            suffixText: "₸/орын",
                            labelText: "Бағасы",
                          ),
                        ),
                        Visibility(
                          visible: ref.read(userProvider) is Driver &&
                              passengersList.value.isNotEmpty,
                          child: TextField(
                            style: const TextStyle(color: Colors.black),
                            enabled: false,
                            controller: TextEditingController(
                                text: (passengersList.value.isEmpty
                                        ? 0
                                        : passengersList.value[0]["quantity"] *
                                            trip.seat_price)
                                    .toString()),
                            decoration: const InputDecoration(
                                labelText: "Жалпы табыс", suffixText: "₸"),
                          ),
                        ),
                        Visibility(
                          visible: ref.read(userProvider) is Customer &&
                              trip.tickets.isNotEmpty,
                          child: TextField(
                            style: const TextStyle(color: Colors.black),
                            enabled: false,
                            controller: TextEditingController(
                                text: trip.tickets.isEmpty
                                    ? ""
                                    : trip.tickets[0]["quantity"].toString()),
                            decoration: const InputDecoration(
                              labelText: "Жалпы табыс",
                            ),
                          ),
                        ),
                        Visibility(
                          visible: ref.read(userProvider) is Customer &&
                              trip.tickets.isNotEmpty,
                          child: TextField(
                            style: const TextStyle(color: Colors.black),
                            enabled: false,
                            controller: TextEditingController(
                                text: (trip.tickets.isEmpty
                                        ? 0
                                        : trip.tickets[0]["quantity"] *
                                            trip.seat_price)
                                    .toString()),
                            decoration: const InputDecoration(
                                labelText: "Есептелген жалпы сома",
                                suffixText: "₸"),
                          ),
                        ),
                        TextField(
                          style: const TextStyle(color: Colors.black),
                          enabled: false,
                          controller: TextEditingController(
                              text: trip.driver!["car"]["brand"] +
                                  " " +
                                  trip.driver!["car"]["model"] +
                                  " " +
                                  trip.driver!["car"]["license_number"]),
                          decoration: const InputDecoration(
                              labelText: "Көлік мәліметтері"),
                        ),
                        Visibility(
                          visible: ref.read(userProvider) is Customer,
                          child: TextField(
                            style: const TextStyle(color: Colors.black),
                            enabled: false,
                            controller: TextEditingController(
                                text: trip.driver!["name"]),
                            decoration: const InputDecoration(
                                labelText: "Жүргізуші аты"),
                          ),
                        ),
                        Visibility(
                          visible: ref.read(userProvider) is Customer,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  style: const TextStyle(color: Colors.black),
                                  enabled: false,
                                  controller: TextEditingController(
                                      text: trip.driver!["phone_number"]),
                                  decoration: InputDecoration(
                                      labelText: "Жүргізуші телефон нөмірі"),
                                ),
                              ),
                              GestureDetector(
                                child: const Icon(Icons.call),
                                onTap: () async {
                                  print("Call");
                                  bool? res =
                                      await FlutterPhoneDirectCaller.callNumber(
                                          trip.driver!["phone_number"]);
                                },
                              )
                            ],
                          ),
                        ),
                        Visibility(
                          visible: trip.comment != null,
                          child: TextField(
                            style: const TextStyle(color: Colors.black),
                            enabled: false,
                            maxLines: null,
                            controller:
                                TextEditingController(text: trip.comment),
                            decoration: const InputDecoration(
                                labelText: "Тоқтатулар/Пікірлер"),
                          ),
                        ),
                      ],
                    )),
                Visibility(
                  visible: ref.read(userProvider) is Driver &&
                      trip is PENDING &&
                      seatsUsed.value != trip.total_seats,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colour.lightYellow),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ЖҮРГІЗУ КӨРІНІСІ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  "Жолда көріну мүмкіндігін қосу/өшіру арқылы іздеу тізімінен жариялауды қолмен жоюға/жасыруға болады.")
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ref.watch(tripProvider).rideVisiblityButtonLoading
                            ? const CircularProgressIndicator()
                            : Switch(
                                value: visibility.value,
                                onChanged: (value) async {
                                  visibility.value = value;
                                  await ref
                                      .read(tripProvider)
                                      .rideVisiblity(
                                          context, trip.id, !visibility.value)
                                      .then(
                                          (value) => visibility.value = value);
                                }),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: ref.read(userProvider) is Driver,
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colour.lightYellow),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "ЖОЛАУШЫЛАР",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              Text("${seatsUsed.value}/${trip.total_seats}")
                            ],
                          ),
                          ...passengersList.value
                              .map((e) => ListTile(
                                    leading: CircleAvatar(
                                      child: Text(e["quantity"].toString()),
                                    ),
                                    trailing: IconButton(
                                      icon: Icon(Icons.call),
                                      onPressed: () async {
                                        bool? res =
                                            await FlutterPhoneDirectCaller
                                                .callNumber(e["passenger"]
                                                    ["phone_number"]);
                                      },
                                    ),
                                    title: Text(e["passenger"]["name"] +
                                        ((e["quantity"] - 1) >= 1
                                            ? " +${(e["quantity"] - 1)}"
                                            : "")),
                                    subtitle:
                                        Text(e["passenger"]["phone_number"]),
                                  ))
                              .toList()
                        ],
                      )),
                ),
                Visibility(
                  visible: ref.read(userProvider) is Driver &&
                          passengersList.value.isNotEmpty &&
                          trip is PENDING ||
                      trip is FILLED,
                  child: CustomButton(
                    text: 'ШЫҒУ',
                    onTap: () {
                      ref.read(tripProvider).departRide(context, trip.id);
                    },
                    color: Colour.yellow,
                    textColor: Colors.white,
                    loading: ref.watch(tripProvider).departButtonLoading,
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: (ref.read(userProvider) is Customer &&
                (trip.tickets.isNotEmpty && trip.tickets[0]["is_cancelled"]))
            ? CustomButton(
                text: 'БАС ТАРТЫЛДЫ',
                onTap: () {
                  //ref.read(tripProvider).cancelRide(context, trip.id);
                },
                color: Colour.red,
                textColor: Colors.white,
                loading: ref.watch(tripProvider).cancelButtonLoading,
              )
            : trip.maybeMap(
                orElse: () {
                  return CustomButton(
                    text: 'БАС ТАРТУ',
                    onTap: () {
                      ref.read(tripProvider).cancelRide(context, trip.id);
                    },
                    color: Colour.red,
                    textColor: Colors.white,
                    loading: ref.watch(tripProvider).cancelButtonLoading,
                  );
                },
                DEPARTED: (_) => ref.read(userProvider) is Driver
                    ? CustomButton(
                        text: 'ТОЛЫҚ',
                        onTap: () {
                          ref.read(tripProvider).completeRide(context, trip.id);
                        },
                        color: Colour.cyan,
                        textColor: Colors.white,
                        loading: ref.watch(tripProvider).completeButtonLoading,
                      )
                    : CustomButton(
                        text: 'КЕТКЕН',
                        onTap: () {
                          //ref.read(tripProvider).departRide(context, trip.id);
                        },
                        color: Colour.yellow,
                        textColor: Colors.white,
                        loading: ref.watch(tripProvider).departButtonLoading,
                      ),
                COMPLETED: (_) => CustomButton(
                  text: 'АЯҚТАЛДЫ',
                  onTap: () {
                    //ref.read(tripProvider).completeRide(context, trip.id);
                  },
                  color: Colour.cyan,
                  textColor: Colors.white,
                  loading: ref.watch(tripProvider).completeButtonLoading,
                ),
                CANCELLED: (_) => CustomButton(
                  text: 'БАС ТАРТЫЛДЫ',
                  onTap: () {
                    //ref.read(tripProvider).cancelRide(context, trip.id);
                  },
                  color: Colour.red,
                  textColor: Colors.white,
                  loading: ref.watch(tripProvider).cancelButtonLoading,
                ),
              ));
  }
}
