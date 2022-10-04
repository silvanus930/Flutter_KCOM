import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:kcom/Page/HomePage.dart';
import 'package:kcom/Page/AkunPage.dart';
import 'package:kcom/Page/komunitasPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int index;

  List showWidget = [
    HomePage(),
    komunitasPage(),
    AkunPage(),
  ];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: showWidget[index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(
            side: BorderSide(
          color: Colors.white,
          width: 4,
        )),
        onPressed: () {
          setState(() {
            index = 1;
          });
        },
        child: Icon(Icons.groups_outlined),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        iconSize: 20,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.house), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups_outlined), label: "komunitas"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
