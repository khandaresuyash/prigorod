import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/annotations.dart';
import 'package:prigorod/presentation/splash/controller.dart';

import '../theme.dart';

@RoutePage()
class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   useEffect(() {
     initialize(context, ref);
     return null;
   },["one"]);
    return const Scaffold(
      body: Center(
        child: Text(
          "PrigorodTaxi",
          style: TextStyle(
              color: Colour.yellow, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
