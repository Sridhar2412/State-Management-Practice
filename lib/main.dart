import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notification/presentation/home/home.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  // final fcmToken = await FirebaseMessaging.instance.getToken();
  // print("Registration Token:");
  // print(fcmToken);
  runApp(const ProviderScope(child: MyAppPage()));
}
