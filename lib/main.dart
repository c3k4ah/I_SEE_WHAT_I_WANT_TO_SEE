import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imagination/views/home.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      title: 'No Title',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
      },
    );
  }
}
