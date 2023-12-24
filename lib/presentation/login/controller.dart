import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/client/service.dart';
import '../../services/router/router.dart';
import '../snackbar.dart';

enum UserType {
  Passanger,
  Driver,
}

class LoginNotifier extends ChangeNotifier {
  final Ref ref;

  LoginNotifier(this.ref);

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  sendCode(BuildContext context, String phone, UserType type) async {
    if (phone.isEmpty || phone.length < 10) {
      showSnackbar(context, "Phone number is in invalid format");
      return;
    }
    String userType = "CUSTOMER";
    if (type == UserType.Driver) {
      userType = "DRIVER";
    }
    loading = true;
    await post("auth/sendOtp",
            data: {"user_type": userType, "phone_number": "+7 $phone"})
        .then((value) => value.fold((l) {
              showSnackbar(context, l);
              loading = false;
            }, (r) {
              showSnackbar(context, r["otp"]);
              router.replace(VerificationRoute(type: type, phone: phone));
            }));
  }
}

final loginProvider = ChangeNotifierProvider.autoDispose<LoginNotifier>((ref) {
  return LoginNotifier(ref);
});
