import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/services/client/service.dart';
import 'package:prigorod/services/providers.dart';

import '../../domain/ride/model.dart';
import '../../domain/user/model.dart';

final driverPostingsProvider =
    StreamProvider.autoDispose<List<Trip>>((ref) async* {
  bool activator = true;
  ref.onDispose(() {
    activator = false;
  });
  while (activator) {
    // ignore: unused_local_variable
    late String url;
    yield await get(ref.read(userProvider).map(
            DRIVER: (_) => url = "driver/trips",
            CUSTOMER: (_) => "customer/trips/history"))
        .then((value) => value.fold((l) => [], (r) {
              return (r["data"] as List).map((e) => Trip.fromJson(e)).toList();
            }));
    await Future.delayed(const Duration(seconds: 5));
  }
});

void storeProfile(WidgetRef ref) async {
  await get("profile").then((value) => value.fold((l) async {}, (r) async {
        ref.read(userProvider.notifier).state = User.fromJson(r);
        await Future.delayed(const Duration(seconds: 5));
      }));
}
