import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/domain/ride/model.dart';
import 'package:prigorod/presentation/snackbar.dart';
import 'package:prigorod/services/client/service.dart';
import 'package:prigorod/services/providers.dart';

import '../../services/router/router.dart';

class TripNotifier extends ChangeNotifier {
  final Ref ref;

  TripNotifier(this.ref);

  bool _cancelButtonLoading = false;
  bool get cancelButtonLoading => _cancelButtonLoading;
  set cancelButtonLoading(bool value) {
    _cancelButtonLoading = value;
    notifyListeners();
  }

  cancelRide(BuildContext context, String id) async {
    _cancelButtonLoading = true;

    ref.read(userProvider).map(DRIVER: (_) async {
      await put("driver/trips/$id?action=MARK_CANCELLED", data: {})
          .then((value) => value.fold((l) {
                showSnackbar(context, l);
                _cancelButtonLoading = false;
              }, (r) {
                _cancelButtonLoading = false;
                router.replace(TripRoute(trip: Trip.fromJson(r)));
              }));
    }, CUSTOMER: (_) async {
      await post("customer/trips/$id/cancel", data: {})
          .then((value) => value.fold((l) {
                showSnackbar(context, l);
                _cancelButtonLoading = false;
              }, (r) {
                _cancelButtonLoading = false;
                router.pop();
              }));
    });
  }

  bool _departButtonLoading = false;
  bool get departButtonLoading => _departButtonLoading;
  set departButtonLoading(bool value) {
    _departButtonLoading = value;
    notifyListeners();
  }

  departRide(BuildContext context, String id) async {
    _departButtonLoading = true;
    await put("driver/trips/$id?action=MARK_DEPARTED", data: {})
        .then((value) => value.fold((l) {
              showSnackbar(context, l);
              _departButtonLoading = false;
            }, (r) {
              _departButtonLoading = false;
              router.replace(TripRoute(trip: Trip.fromJson(r)));
            }));
  }

  bool _completeButtonLoading = false;
  bool get completeButtonLoading => _completeButtonLoading;
  set completeButtonLoading(bool value) {
    _completeButtonLoading = value;
    notifyListeners();
  }

  completeRide(BuildContext context, String id) async {
    _completeButtonLoading = true;
    await put("driver/trips/$id?action=MARK_COMPLETED", data: {})
        .then((value) => value.fold((l) {
              showSnackbar(context, l);
              _completeButtonLoading = false;
            }, (r) {
              _completeButtonLoading = false;
              router.replace(TripRoute(trip: Trip.fromJson(r)));
            }));
  }

  bool _rideVisiblityButtonLoading = false;
  bool get rideVisiblityButtonLoading => _rideVisiblityButtonLoading;
  set rideVisiblityButtonLoading(bool value) {
    _rideVisiblityButtonLoading = value;
    notifyListeners();
  }

  Future<bool> rideVisiblity(
      BuildContext context, String id, bool isFull) async {
    _completeButtonLoading = true;
    String action = !isFull ? "MARK_NOT_FILLED" : "MARK_FILLED";
    print(action);
    Either<String, Map<String, dynamic>> resp =
        await put("driver/trips/$id?action=$action", data: {});
    return resp.fold((l) {
      showSnackbar(context, l);
      _completeButtonLoading = false;
      return isFull;
    }, (r) {
      _completeButtonLoading = false;
      router.replace(TripRoute(trip: Trip.fromJson(r)));
      return !isFull;
    });
  }
}

final tripProvider = ChangeNotifierProvider<TripNotifier>((ref) {
  return TripNotifier(ref);
});

final tripPassengersProvider =
    StreamProvider.family.autoDispose<Trip?, String>((ref, String id) async* {
  bool activator = true;
  ref.onDispose(() {
    activator = false;
  });
  while (activator) {
    yield await get(ref.read(userProvider).map(
            DRIVER: (_) => "driver/trips/$id",
            CUSTOMER: (_) => "customer/trips/$id"))
        .then((value) => value.fold((l) => null, (r) {
              return Trip.fromJson(r);
            }));
    await Future.delayed(const Duration(seconds: 2));
  }
});
