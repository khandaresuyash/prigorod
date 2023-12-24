import 'package:auto_route/annotations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/domain/user/model.dart';
import 'package:prigorod/presentation/home/controller.dart';
import 'package:prigorod/presentation/snackbar.dart';
import 'package:prigorod/presentation/widgets.dart';
import 'package:prigorod/services/client/service.dart';

import '../../domain/ride/model.dart';
import '../../services/providers.dart';
import '../../services/router/router.dart';
import '../theme.dart';

@RoutePage()
class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedback = useTextEditingController();
    final showHideFeedbackButton = useState(false);
    feedback.addListener(() {
      showHideFeedbackButton.value = feedback.value.text.isNotEmpty;
    });
    useEffect(() {
      storeProfile(ref);
      return null;
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PrigorodTaxi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colour.yellow),
        ),
        actions: [
          IconButton(
              onPressed: () {
                storeProfile(ref);
                showDialog(
                    context: context,
                    builder: (context) {
                      storeProfile(ref);
                      return Center(
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            width: screenWidth(context) * 0.8,
                            height: 370 +
                                ref.read(userProvider).maybeMap(
                                    orElse: () => 0, DRIVER: (d) => 120),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              children: [
                                const Icon(Icons.person),
                                TextField(
                                  enabled: false,
                                  decoration:
                                      const InputDecoration(labelText: "Аты"),
                                  controller: TextEditingController(
                                      text: ref.read(userProvider).name),
                                ),
                                TextField(
                                  enabled: false,
                                  decoration: const InputDecoration(
                                      labelText: "Телефон нөмірі"),
                                  controller: TextEditingController(
                                      text:
                                          ref.read(userProvider).phone_number),
                                ),
                                TextField(
                                  enabled: false,
                                  decoration:
                                      const InputDecoration(labelText: "Қала"),
                                  controller: TextEditingController(
                                      text: ref.read(userProvider).city),
                                ),
                                TextField(
                                  enabled: false,
                                  decoration:
                                      const InputDecoration(labelText: "Ауыл"),
                                  controller: TextEditingController(
                                      text: ref.read(userProvider).village),
                                ),
                                ref.watch(userProvider).maybeMap(
                                      orElse: () => Container(),
                                      DRIVER: (dr) => TextField(
                                        enabled: false,
                                        decoration: const InputDecoration(
                                            prefixText: "₸ ",
                                            labelText: "Табыс"),
                                        controller: TextEditingController(
                                            text: dr.earning.toString()),
                                      ),
                                    ),
                                ref.watch(userProvider).maybeMap(
                                      orElse: () => Container(),
                                      DRIVER: (dr) => TextField(
                                        enabled: false,
                                        decoration: const InputDecoration(
                                            prefixText: "₸ ",
                                            labelText: "Платформаның мерзімі"),
                                        controller: TextEditingController(
                                            text: ((dr.earning / 100) * 10)
                                                .toString()),
                                      ),
                                    ),
                                const Spacer(),
                                CustomButton(
                                  text: "ШЫҒУ",
                                  onTap: () async {
                                    await clearCookies();
                                    router.pushAndPopUntil(const SplashRoute(),
                                        predicate: (predicate) => false);
                                  },
                                  height: 40,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              icon: const Icon(Icons.person))
        ],
      ),
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FindYourNextRideButton(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ref.read(userProvider).map(
                  DRIVER: (_) => const Text(
                        "Сіздің хабарламаларыңыз",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                  CUSTOMER: (_) => const Text(
                        "Брондау(лар)ыңыз",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
            ),
            Expanded(
                child: ref.watch(driverPostingsProvider).map(data: (data) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  Trip trip = data.value[index];
                  return RideInfoTile(ride: trip);
                },
                itemCount: data.value.length,
              );
            }, error: (error) {
              ref.refresh(driverPostingsProvider);
              return const Center(
                child: Text("ООП! Бірдеңе дұрыс болмады"),
              );
            }, loading: (loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            })),
            Container(
              margin: const EdgeInsets.only(
                  bottom: 15, left: 15, right: 15, top: 15),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: screenWidth(context),
              decoration: BoxDecoration(
                  color: Colour.lightYellow,
                  borderRadius: BorderRadius.circular(4)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(CupertinoIcons.info_circle),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Пікіріңіз қолданбаны жақсартуға көмектеседі.")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: TextField(
                      controller: feedback,
                      maxLines: null,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Сіздің ойларыңыз осында..."),
                    ),
                  ),
                  Visibility(
                    visible: showHideFeedbackButton.value,
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  Visibility(
                    visible: showHideFeedbackButton.value,
                    child: CustomButton(
                      height: 45,
                      text: "Жіберу",
                      onTap: () async {
                        await FirebaseFirestore.instance
                            .collection("feedbacks")
                            .doc()
                            .set({
                          'userType': ref.read(userProvider).map(
                              DRIVER: (DRIVER) => "Driver",
                              CUSTOMER: (CUSTOMER) => "Customer"),
                          'id': ref.read(userProvider).id,
                          'name': ref.read(userProvider).name,
                          'feedBack': feedback.value.text,
                          'doc': DateTime.now(),
                        }).whenComplete(() {
                          feedback.text = "";
                          showSnackbar(context, "Пікіріңізге рахмет!");
                        });
                      },
                      color: Colors.black,
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FindYourNextRideButton extends ConsumerWidget {
  const FindYourNextRideButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.read(userProvider).map(
        CUSTOMER: (_) => AspectRatio(
              aspectRatio: 16 / 6,
              child: Container(
                padding: const EdgeInsets.all(15),
                color: Colour.lightCyan,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  child: InkWell(
                    onTap: () {
                      router.push(SearchRoute(
                          from: ref.read(userProvider).village,
                          to: ref.read(userProvider).city));
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colour.yellow,
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Келесі сапарыңызды табыңыз",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
        DRIVER: (_) => AspectRatio(
              aspectRatio: 16 / 6,
              child: Container(
                padding: const EdgeInsets.all(15),
                color: Colour.lightCyan,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  child: InkWell(
                    onTap: () {
                      router.push(const PostAdRoute());
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colour.yellow,
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              CupertinoIcons.car_detailed,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Жаңа хабарландыру жариялау",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ));
  }
}

class RideInfoTile extends ConsumerWidget {
  final Trip ride;
  const RideInfoTile({
    super.key,
    required this.ride,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      height: 75,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: const Color.fromARGB(85, 255, 190, 105),
          borderRadius: BorderRadius.circular(4)),
      child: InkWell(
        onTap: () {
          print(ride.tickets);
          router.push(TripRoute(trip: ride));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  "${ride.from} to ${ride.to}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text(
                  (ref.read(userProvider) is Customer &&
                          (ride.tickets.isNotEmpty &&
                              ride.tickets[0]["is_cancelled"]))
                      ? "БАС ТАРТЫЛДЫ"
                      : ride.map(
                          PENDING: (_) => ref.read(userProvider).map(
                              DRIVER: (_) => "ТІКЕЛЕЙ ЭФИР",
                              CUSTOMER: (_) => "Брондау"),
                          FILLED: (_) => "ТОЛДЫ",
                          DEPARTED: (_) => "КЕТКЕН",
                          COMPLETED: (_) => "АЯҚТАЛДЫ",
                          CANCELLED: (_) => "БАС ТАРТЫЛДЫ"),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ride.maybeMap(
                          orElse: () => null, CANCELLED: (_) => Colors.red)),
                )
              ],
            ),
            Text(ride.driver!["car"]["brand"] +
                " " +
                ride.driver!["car"]["model"] +
                " | " +
                ride.driver!["car"]["license_number"]),
            Text(formatDateTime(ride.departure_time)),
          ],
        ),
      ),
    );
  }
}

// tileColor: trip.maybeMap(
// orElse: () => Colour.lightYellow.withAlpha(80),
// CANCELLED: (_) => Colour.red.withAlpha(80),
// COMPLETED: (_) => Colour.cyan.withAlpha(80)
// ),
