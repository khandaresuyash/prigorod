import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/annotations.dart';
import 'package:prigorod/presentation/verification/controller.dart';

import '../login/controller.dart';
import '../theme.dart';
import '../widgets.dart';

//046828
@RoutePage()
class VerificationPage extends HookConsumerWidget {
  final UserType type;
  final String phone;
  const VerificationPage(this.type, this.phone, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final code = useTextEditingController();
    return Scaffold(
      body: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/taxi.png",
                width: screenWidth(context) * 0.3,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Телефонмен кіру",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Text("Біз сізге телефон нөміріңізге растау кодын жібердік."),
            CustomTextField(
              inputType: TextInputType.number,
              controller: code,
              margin: const EdgeInsets.only(bottom: 5, top: 10),
              hintText: "Тексеру коды",
            ),
            CustomButton(
              text: 'Кіру',
              loading: ref.watch(verificationProvider).loading,
              onTap: () {
                ref
                    .read(verificationProvider)
                    .verifyCode(context, type, code.value.text, phone);
              },
            )
          ],
        ),
      ),
    );
  }
}
