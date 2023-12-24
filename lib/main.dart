import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/services/router/router.dart';

import 'firebase_options.dart';
import 'services/client/service.dart';
import 'services/messaging/service.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await prepareJar();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(
      child: Directionality(
          textDirection: TextDirection.rtl, child: PrigorodTaxiApp())));
}

class PrigorodTaxiApp extends ConsumerWidget {
  const PrigorodTaxiApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(onAuthTokenRefresh, (previous, next) async {
      if (next.value != null) {
        await ref.read(notificationServiceProvider).storeToken();
      }
    });

    return MaterialApp.router(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
        child: child!,
      ),
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: router.config(),
    );
  }
}
