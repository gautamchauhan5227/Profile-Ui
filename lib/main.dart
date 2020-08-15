import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:profile_ui/Profile_Screen.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile_Screen(),
    );
  }
}
