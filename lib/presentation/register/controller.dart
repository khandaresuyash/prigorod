import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/presentation/login/controller.dart';

import '../../domain/user/model.dart';
import '../../services/client/service.dart';
import '../../services/messaging/service.dart';
import '../../services/providers.dart';
import '../../services/router/router.dart';
import '../snackbar.dart';

class RegisterNotifier extends ChangeNotifier {
  final Ref ref;
  RegisterNotifier(this.ref);
  TextEditingController name = TextEditingController();
  final TextEditingController carRegNum = TextEditingController();
  final TextEditingController carBrand = TextEditingController();
  final TextEditingController carModel = TextEditingController();
  final TextEditingController carColor = TextEditingController();

  List<City> cities = [
    City("Astana", [
      "Косшы",
      "Ильинка",
      "Талапкер",
      "Кажымукан",
      "Коянды",
      "Жибек жолы",
      "Софиевка",
      "Тайтобе",
      "Бозайгыр",
    ]),
    City("Almaty", [
      "Актас",
      "Байтерек",
      "Еңбекші",
      "Карабулак",
      "Панфилова",
      "Кызыл кайрат",
      "Талдыбулак",
      "Белбулак",
      "Туздыбастау",
      "Бесағаш",
      "Думан",
      "Абай",
      "Каскелен",
      "Айтей",
      "Иргели",
      "Асыл Арман",
      "Булакты",
      "Жалпаксай",
      "Алмалыбек",
      "Раймбек",
      "Автовокзал Ушконыр",
      "Шалкар",
      "Шымалған",
      "Жібек жолы",
      "Кошымбет",
      "Улан",
      "Жамбыл",
      "Еңбекші",
      "Қасымбет",
      "Талғар",
      "Есик",
    ])
  ];

  String? city;
  List<String> villages = [];
  String? village;
  setCity(City e) {
    village = null;
    notifyListeners();
    villages = [];
    notifyListeners();
    city = e.name;
    notifyListeners();
    villages = e.villages;
    notifyListeners();
  }

  setVillage(String v) {
    village = v;
    notifyListeners();
  }

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  register(BuildContext context, UserType user, String phone) async {
    if (name.value.text.isEmpty) {
      showSnackbar(context, "Full name is required.");
      return;
    }
    if (city == null) {
      showSnackbar(context, "Select a city to continue.");
      return;
    }
    if (village == null) {
      showSnackbar(context, "Select a village to continue.");
      return;
    }
    if (user == UserType.Driver) {
      if (carRegNum.value.text.isEmpty) {
        showSnackbar(context, "Car registration number is required.");
        return;
      }
      if (carBrand.value.text.isEmpty) {
        showSnackbar(context, "Car brand is required.");
        return;
      }
      if (carModel.value.text.isEmpty) {
        showSnackbar(context, "Car Model is required.");
        return;
      }
      if (carColor.value.text.isEmpty) {
        showSnackbar(context, "Car color is required.");
        return;
      }
    }
    loading = true;
    Map data = {
      "name": name.value.text,
      "city": city!,
      "village": village!,
    };
    if (user == UserType.Driver) {
      data.addAll({
        "car_number": carRegNum.value.text,
        "car_model": carModel.value.text,
        "car_brand": carBrand.value.text,
        "car_color": carColor.value.text
      });
    }
    await put("profile", data: data).then((value) => value.fold((l) {
          loading = false;
          showSnackbar(context, l);
        }, (r) async {
          await get("profile").then((value) => value.fold((l) {
                loading = false;
                showSnackbar(context, l);
              }, (r) async {
                ref.read(userProvider.notifier).state = User.fromJson(r);
                await ref.read(notificationServiceProvider).requestPermission();
                router.replace(const HomeRoute());
              }));
        }));
  }
}

final registerProvider =
    ChangeNotifierProvider.autoDispose<RegisterNotifier>((ref) {
  return RegisterNotifier(ref);
});

class City {
  final String name;
  final List<String> villages;

  City(this.name, this.villages);
}
