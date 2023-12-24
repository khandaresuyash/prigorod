import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../client/service.dart';

class NotificationService {
  final Ref ref;
  final FirebaseMessaging messaging = FirebaseMessaging.instance;
  String? token;

  NotificationService(this.ref);

  Future requestPermission() async {
    NotificationSettings settings = await messaging.requestPermission();
    storeToken();
  }

  storeToken() async {
    String? token = await messaging.getToken();
    if (token == null) {
      return;
    }
    return await post("auth/deviceToken", data: {"registration_token": token})
        .then((value) => value.fold((l) => print(l), (r) => print(token)));

  }
}

Future<void> backgroundMessageHandler(RemoteMessage message) async {}

final Provider<NotificationService> notificationServiceProvider =
Provider((ref) => NotificationService(ref));
final onAuthTokenRefresh = StreamProvider<String>(
        (ref) => ref.read(notificationServiceProvider).messaging.onTokenRefresh);
final onMessage =
StreamProvider<RemoteMessage>((ref) => FirebaseMessaging.onMessage);
final onMessageOpenedApp = StreamProvider<RemoteMessage>(
        (ref) => FirebaseMessaging.onMessageOpenedApp);
