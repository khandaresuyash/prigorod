import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/presentation/login/controller.dart';
import 'package:prigorod/presentation/theme.dart';
import 'package:prigorod/presentation/widgets.dart';

@RoutePage()
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userType = useState(UserType.Passanger);
    final phone = useTextEditingController();
    return Scaffold(
      body: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const Text("Біз сізге телефон нөміріңізге растау кодын жібереміз"),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              height: 60,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(4)),
              child: Row(
                children: [
                  const Text("Сен?"),
                  const Spacer(),
                  SelectUserRoleButton(
                    value: UserType.Passanger,
                    selection: userType.value,
                    onPressed: () {
                      userType.value = UserType.Passanger;
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SelectUserRoleButton(
                    value: UserType.Driver,
                    selection: userType.value,
                    onPressed: () {
                      userType.value = UserType.Driver;
                    },
                  ),
                ],
              ),
            ),
            CustomTextField(
              inputType: TextInputType.phone,
              autofocus: true,
              prefixText: "+7 ",
              controller: phone,
              margin: const EdgeInsets.only(bottom: 5),
              hintText: "Телефон нөмірі",
            ),
            CustomButton(
              text: 'Код жіберу',
              onTap: () {
                ref
                    .read(loginProvider)
                    .sendCode(context, phone.value.text, userType.value);
              },
              loading: ref.watch(loginProvider).loading,
            )
          ],
        ),
      ),
    );
  }
}

class SelectUserRoleButton extends StatelessWidget {
  final UserType value;
  final UserType selection;
  final Function() onPressed;
  const SelectUserRoleButton(
      {super.key,
      required this.value,
      required this.selection,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: value == selection ? Colour.yellow : null,
            border: Border.all(
                color: value == selection ? Colour.yellow : Colors.black),
            borderRadius: BorderRadius.circular(4)),
        child: value == selection
            ? Row(
                children: [
                  const Icon(
                    Icons.done,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    value.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            : Text(
                value.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
