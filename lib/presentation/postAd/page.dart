import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets.dart';
import 'controller.dart';

@RoutePage()
class PostAdPage extends HookConsumerWidget {
  const PostAdPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Жарнаманы орналастыру",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CustomTextField(
                          enabled: false,
                          controller: TextEditingController(
                              text:
                                  "Кімнен: ${ref.watch(postAdProvider).from}"),
                          hintText: "Кімнен",
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextField(
                          enabled: false,
                          controller: TextEditingController(
                              text: "Кімге: ${ref.watch(postAdProvider).to}"),
                          hintText: "Кімге",
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        ref.read(postAdProvider).switchLocations();
                      },
                      icon: const Icon(Icons.swap_vert))
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate:
                              DateTime.now().add(const Duration(days: 30)))
                      .then((value) {
                    ref.read(postAdProvider).selectedDate = value;
                  });
                },
                child: CustomTextField(
                  hintColor: Colors.black87,
                  enabled: false,
                  controller: TextEditingController(
                      text: ref.watch(postAdProvider).selectedDateString),
                  hintText: "Күнді таңдаңыз",
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.inputOnly)
                      .then((value) {
                    ref.read(postAdProvider).selectedTime = value;
                    ref.read(postAdProvider).setSelctedTimeString(context);
                  });
                },
                child: CustomTextField(
                  hintColor: Colors.black87,
                  enabled: false,
                  controller: TextEditingController(
                      text: ref.watch(postAdProvider).selectedTimeString),
                  hintText: "Уақытты таңдаңыз",
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                controller: ref.read(postAdProvider).seats,
                hintText: "Орындар қолжетімді",
                inputType: TextInputType.number,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                controller: ref.read(postAdProvider).price,
                hintText: "Бағасы (орынға)",
                inputType: TextInputType.number,
                suffixText: "₸",
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                controller: ref.read(postAdProvider).comment,
                hintText:
                    "Жоспарланған аялдамаларыңыз туралы айтып беріңіз (бар болса)",
              ),
              const SizedBox(
                height: 8,
              ),
              CustomButton(
                text: "Дайын",
                onTap: () {
                  ref.read(postAdProvider).postAd(context);
                },
                loading: ref.watch(postAdProvider).loading,
              )
            ],
          ),
        ),
      ),
    );
  }
}
