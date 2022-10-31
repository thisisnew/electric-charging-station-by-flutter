import 'package:electric_charging_station/auth.dart';
import 'package:electric_charging_station/onboard.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;
void main() async {
  // main() 함수에서 async를 쓰려면 필요
  WidgetsFlutterBinding.ensureInitialized();

  // shared_preferences 인스턴스 생성
  prefs = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isOnboarded = prefs.getBool("isOnBoard") ?? false;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isOnboarded ? AuthPage() : OnboardingPage(),
    );
  }
}
