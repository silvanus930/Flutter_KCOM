import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Page/LoginPage.dart';

void main() {
  runApp(Mainpage());
}

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}
