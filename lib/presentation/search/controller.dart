import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/presentation/snackbar.dart';
import 'package:prigorod/services/client/service.dart';
import 'package:prigorod/services/router/router.dart';

import '../../domain/ride/model.dart';

class SearchNotifier extends ChangeNotifier {
  final Ref ref;

  SearchNotifier(this.ref);

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool _searchLoading = true;
  bool get searchLoading => _searchLoading;
  set searchLoading(bool value) {
    _searchLoading = value;
    notifyListeners();
  }

  book(BuildContext context, String id, int quantity) async {
    loading = true;
    await post("customer/trips/$id/book?quantity=$quantity", data: {})
        .then((value) => value.fold((l) {
              router.pop();
              showSnackbar(context, l);
              loading = false;
            }, (r) {
              router.replace(TripRoute(trip: Trip.fromJson(r)));
            }));
  }

  List<Trip> searchList = [];

  search(BuildContext context, String from, String to) async {
    searchLoading = true;
    await get("customer/trips?search_from=$from&search_to=$to&page=1&limit=100")
        .then((value) => value.fold((l) {
              searchList = [];
              searchLoading = false;
              notifyListeners();
              showSnackbar(context, l);
            }, (r) {
              searchLoading = false;
              searchList =
                  (r["data"] as List).map((e) => Trip.fromJson(e)).toList();
              notifyListeners();
            }));
  }
}

final searchProvider =
    ChangeNotifierProvider.autoDispose<SearchNotifier>((ref) {
  return SearchNotifier(ref);
});
