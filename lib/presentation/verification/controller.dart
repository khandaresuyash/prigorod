import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/user/model.dart';
import '../../services/client/service.dart';
import '../../services/messaging/service.dart';
import '../../services/providers.dart';
import '../../services/router/router.dart';
import '../login/controller.dart';
import '../snackbar.dart';

class VerificationNotifier extends ChangeNotifier {
  final Ref ref;

  VerificationNotifier(this.ref);

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  verifyCode(BuildContext context, UserType type, String code,String phone) async {
    if (code.isEmpty) {
      return;
    }
    loading = true;
    await post("auth/verifyOtp", data: {"otp": code})
        .then((value) => value.fold((l) {
              showSnackbar(context, l);
              loading = false;
            }, (r) async {
          if (r["is_new"]) {
            router.replace(RegisterRoute(type:  type,phone: phone));
            return;
          }
          await ref.read(notificationServiceProvider).requestPermission();
          getAndStoreProfile(context);
    }));
  }

  getAndStoreProfile(BuildContext context) async {
    await get("profile")
        .then((value) => value.fold((l) => showSnackbar(context, l), (r) {
      ref.read(userProvider.notifier).state = User.fromJson(r);
      router.replace(const HomeRoute());
    }));
  }
}

final verificationProvider =
    ChangeNotifierProvider.autoDispose<VerificationNotifier>((ref) {
  return VerificationNotifier(ref);
});
