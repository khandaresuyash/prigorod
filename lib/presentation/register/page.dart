import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/annotations.dart';

import '../login/controller.dart';
import '../theme.dart';
import '../widgets.dart';
import 'controller.dart';

@RoutePage()
class RegisterPage extends HookConsumerWidget {
  final UserType type;
  final String phone;
  const RegisterPage(this.type, this.phone, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Тіркелу"),
      ),
      body: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                controller: ref.read(registerProvider).name,
                hintText: "Толық аты",
                inputType: TextInputType.name,
                margin: const EdgeInsets.only(bottom: 5),
              ),
              CustomTextField(
                enabled: false,
                controller: TextEditingController(text: phone),
                hintText: "Телефон нөмірі",
                inputType: TextInputType.name,
                margin: const EdgeInsets.only(bottom: 5),
              ),
              CustomDropDownTextField(
                  value: ref.watch(registerProvider).city,
                  hintText: "Қала",
                  items: ref
                      .read(registerProvider)
                      .cities
                      .map((e) => DropdownMenuItem(
                            value: e.name,
                            onTap: () {
                              ref.read(registerProvider).setCity(e);
                            },
                            child: Text(e.name),
                          ))
                      .toList(),
                  onChanged: (value) {}),
              const SizedBox(
                height: 5,
              ),
              Visibility(
                visible: ref.watch(registerProvider).villages.isNotEmpty,
                child: CustomDropDownTextField(
                    value: ref.watch(registerProvider).village,
                    hintText: "Ауыл",
                    items: ref
                        .watch(registerProvider)
                        .villages
                        .map((e) => DropdownMenuItem(
                              value: e,
                              onTap: () {
                                ref.read(registerProvider).setVillage(e);
                              },
                              child: Text(e),
                            ))
                        .toList(),
                    onChanged: (value) {}),
              ),
              Visibility(
                visible: type == UserType.Driver,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Көлік мәліметтері",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    CustomTextField(
                      controller: ref.read(registerProvider).carRegNum,
                      hintText: "Тіркеу нөмірі",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      controller: ref.read(registerProvider).carBrand,
                      hintText: "Автокөлік бренді",
                      inputType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      controller: ref.read(registerProvider).carModel,
                      hintText: "Көлік үлгісі",
                      inputType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      controller: ref.read(registerProvider).carColor,
                      hintText: "Түсавтомобиль түсі",
                      inputType: TextInputType.name,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              CustomButton(
                  loading: ref.watch(registerProvider).loading,
                  text: "Тіркелу",
                  onTap: () {
                    ref.read(registerProvider).register(context, type, phone);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
