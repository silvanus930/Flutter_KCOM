import 'package:flutter/material.dart';
import 'package:kcom/Page/ForgetPassPage.dart';
import 'package:kcom/Page/HomePage.dart';
import 'package:kcom/Page/MainPage.dart';
import 'package:kcom/Page/RegisterPage.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Image(
          width: double.infinity,
          height: double.infinity,
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image(
                    width: 241,
                    height: 81,
                    image: AssetImage('assets/images/logokc.png'))),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(top: 57),
                width: 250,
                height: 118,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Kata Sandi",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 250,
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: (() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ForgetPassPage(),
                    ),
                  );
                }),
                child: Text(
                  "Lupa kata sandi?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 51,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 42),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
                },
                child: Text("Login")),
            Container(
              width: 250,
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: (() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                }),
                child: Text(
                  "Belum punya akun?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ]),
    );
  }
}
