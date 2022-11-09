import 'package:easy_climate/app/helpers/bindings/initial.bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/home/home.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy climate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: InitialBindings(),
      home: const HomeView(),
    );
  }
}
