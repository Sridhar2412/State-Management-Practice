import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final AndroidInitializationSettings _androidInitializationSettings =
      const AndroidInitializationSettings("logo");

  final DarwinInitializationSettings initializationSettingsIOS =
      DarwinInitializationSettings(
    onDidReceiveLocalNotification: (id, title, body, payload) {},
  );
  void initializeNotification() async {
    InitializationSettings initializationSettings = InitializationSettings(
        android: _androidInitializationSettings,
        iOS: initializationSettingsIOS);
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void sendNotification(String title, String body) async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails("channelId", "channelName",
            priority: Priority.high, importance: Importance.max);

    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    // print("inside show");
    await _flutterLocalNotificationsPlugin.show(
        0, title, body, notificationDetails);
  }
}
