import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/presentation/search/controller.dart';
import 'package:prigorod/presentation/theme.dart';

import '../../domain/ride/model.dart';
import '../widgets.dart';

@RoutePage()
class SearchPage extends HookConsumerWidget {
  final String from;
  final String to;
  const SearchPage(this.from, this.to, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final from2 = useState(from);
    final to2 = useState(to);
    useEffect(() {
      ref.read(searchProvider).search(context, from, to);
      return null;
    }, ["one"]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Іздеу',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                ref
                    .read(searchProvider)
                    .search(context, from2.value, to2.value);
              },
              icon: const Icon(Icons.refresh))
        ],
        bottom: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 110),
            child: Container(
              padding: const EdgeInsets.only(left: 15, right: 5, bottom: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextField(
                          controller: TextEditingController(
                              text: "Кімнен: ${from2.value}"),
                          enabled: false,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          controller: TextEditingController(
                              text: "Кімге: ${to2.value}"),
                          enabled: false,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        String tmp = from2.value;
                        from2.value = to2.value;
                        to2.value = tmp;
                        ref
                            .read(searchProvider)
                            .search(context, from2.value, to2.value);
                      },
                      icon: const Icon(Icons.swap_vert))
                ],
              ),
            )),
      ),
      body: ref.watch(searchProvider).searchLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ref.watch(searchProvider).searchList.isEmpty
              ? Center(
                  child: Text(
                      "${from2.value} және ${to2.value} аралығындағы көліктер қолжетімді емес!"),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return SearchTile(
                        ride: ref.read(searchProvider).searchList[index]);
                  },
                  itemCount: ref.watch(searchProvider).searchList.length,
                ),
      // body: Container(
      //   height: screenHeight(context),
      //   width: screenWidth(context),
      //   child: ref.watch(searchPostingsProvider(Tuple2(from, to))).maybeMap(
      //       orElse: () => Center(
      //             child: CircularProgressIndicator(),
      //           ),
      //   data: (data) {
      //         return ListView.builder(itemBuilder: (context,index){
      //           return SearchTile(ride: data.value[index]);
      //         },itemCount: data.value.length,);
      //   }
      //   ),
      // ),
    );
  }
}

class SearchTile extends StatelessWidget {
  final Trip ride;
  const SearchTile({
    super.key,
    required this.ride,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheet(
                    onClosing: () {},
                    builder: (context) {
                      return RideBookingSheet(ride);
                    });
              });
        },
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 75,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color.fromARGB(85, 255, 190, 105)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${ride.driver!["car"]["brand"]} ${ride.driver!["car"]["model"]}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    formatDateTime(ride.departure_time),
                  ),
                  Text(
                    "${ride.total_seats - ride.reserved_seats} орын бар",
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                  color: Colour.yellow,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      4,
                    ),
                    bottomRight: Radius.circular(
                      4,
                    ),
                  )),
              child: Text(
                "${ride.seat_price}₸/орын",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RideBookingSheet extends HookConsumerWidget {
  final Trip ride;
  const RideBookingSheet(this.ride, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int seatsAvailable = ride.total_seats - ride.reserved_seats;
    final seatsCounter = useState(1);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      height: ride.comment == null ? 230 : 260,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${ride.driver!["car"]["brand"]} ${ride.driver!["car"]["model"]}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                formatDateTime(ride.departure_time),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text("${ride.driver!["car"]["color"]}"),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${ride.from} қарай",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            ride.to,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${ride.seat_price}₸/орын",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "${ride.total_seats - ride.reserved_seats} Орындар бар",
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Visibility(
            visible: seatsAvailable > 0,
            child: Row(
              children: [
                Visibility(
                  visible: seatsCounter.value > 1,
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colour.lightCyan,
                        borderRadius: BorderRadius.circular(4)),
                    child: IconButton(
                        onPressed: () {
                          seatsCounter.value = seatsCounter.value - 1;
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colour.cyan,
                        )),
                  ),
                ),
                Container(
                  height: 40,
                  width: 50,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colour.lightCyan),
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(seatsCounter.value.toString()),
                ),
                const SizedBox(
                  width: 10,
                ),
                Visibility(
                  visible: seatsCounter.value < seatsAvailable,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colour.lightCyan,
                        borderRadius: BorderRadius.circular(4)),
                    child: IconButton(
                        onPressed: () {
                          seatsCounter.value = seatsCounter.value + 1;
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colour.cyan,
                        )),
                  ),
                ),
                const Spacer(),
                CustomButton(
                  loading: ref.watch(searchProvider).loading,
                  text: "${seatsCounter.value * ride.seat_price}-де Брондау ₸",
                  onTap: () {
                    ref
                        .read(searchProvider)
                        .book(context, ride.id, seatsCounter.value);
                  },
                  height: 40,
                  width: 180,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Visibility(
              visible: ride.comment != null,
              child: Text("Пікір: ${ride.comment}"))
        ],
      ),
    );
  }
}
