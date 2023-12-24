import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/domain/ride/model.dart';


import '../../services/client/service.dart';
import '../../services/providers.dart';
import '../../services/router/router.dart';
import '../snackbar.dart';

class PostAdNotifier extends ChangeNotifier {
  final Ref ref;

  PostAdNotifier(this.ref);
  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  late String from;
  late String to;

  initialze() {
    from = ref.read(userProvider).village;
    to = ref.read(userProvider).city;
  }

  TimeOfDay? _selectedTime;
  TimeOfDay? get selectedTime => _selectedTime;
  set selectedTime(TimeOfDay? value) {
    _selectedTime = value;
    notifyListeners();
  }

  String? selectedTimeString;
  setSelctedTimeString(BuildContext context) {
    if (selectedTime == null) {
      selectedTimeString = null;
    } else {
      selectedTimeString = selectedTime!.format(context);
    }
    notifyListeners();
  }

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? value) {
    _selectedDate = value;
    if (value != null) {
      selectedDateString = value.toString().split(" ")[0];
    } else {
      selectedDateString = null;
    }
    notifyListeners();
  }

  String? selectedDateString;

  switchLocations() {
    String swapper = from;
    from = to;
    to = swapper;
    notifyListeners();
  }

  TextEditingController seats = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController comment = TextEditingController();

  postAd(BuildContext context) async {
    if (selectedDate == null) {
      showSnackbar(context, "Select date to continue.");
      return;
    }
    if (selectedTime == null) {
      showSnackbar(context, "Select time to continue.");
      return;
    }
    if (seats.value.text.isEmpty) {
      showSnackbar(context, "Seats available is required.");
      return;
    }
    if (price.value.text.isEmpty) {
      showSnackbar(context, "Price is required.");
      return;
    }
    loading = true;
    DateTime rideTime = DateTime(selectedDate!.year, selectedDate!.month,
        selectedDate!.day, selectedTime!.hour, selectedTime!.minute);
    print(rideTime.toIso8601String());
    await post("driver/trips", data: {
      "from": from,
      "to": to,
      "seat_price": price.value.text,
      "total_seats": seats.value.text,
      "departure_time": "${rideTime.toIso8601String()}Z",
      "comment": comment.value.text.isEmpty ? null : comment.value.text
    }).then((value) => value.fold((l) {
      showSnackbar(context, l);
      loading = false;
    }, (r) {
      loading = false;
      router.replace(TripRoute(trip: Trip.fromJson(r)));
    }));
  }
}

final postAdProvider = ChangeNotifierProvider.autoDispose(
        (ref) => PostAdNotifier(ref)..initialze());

class RideTime {
  final String hour;
  final String minute;
  final String period;

  RideTime({required this.hour, required this.minute, required this.period});
}
