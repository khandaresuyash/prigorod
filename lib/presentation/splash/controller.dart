import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/domain/user/model.dart';
import 'package:prigorod/presentation/login/controller.dart';
import 'package:prigorod/services/providers.dart';
import 'package:prigorod/services/router/router.dart';

import '../../services/client/service.dart';

initialize(BuildContext context, WidgetRef ref) async {
  if ((await cookies).isEmpty) {
    router.replace(const LoginRoute());
  } else {
    await getAndStoreProfile(context, ref);
  }
}

getAndStoreProfile(BuildContext context, WidgetRef ref) async {
  await get("profile").then((value) => value.fold((l) async {
        await clearCookies();
        initialize(context, ref);
      }, (r) {
        if (r["name"] == null) {
          router.replace(RegisterRoute(
              type: r["user_type"] == "DRIVER"
                  ? UserType.Driver
                  : UserType.Passanger,
              phone: r["phone_number"]));
        }
        ref.read(userProvider.notifier).state = User.fromJson(r);
        router.replace(const HomeRoute());
      }));
}
