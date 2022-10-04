import 'package:flutter/material.dart';
import 'package:kcom/Page/ForgetPassPage2.dart';
import 'package:kcom/Page/LoginPage.dart';

class ForgetPassPage extends StatelessWidget {
  const ForgetPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Stack(children: <Widget>[
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
              SizedBox(
                height: 83,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 47, right: 47, bottom: 27),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 17, horizontal: 12),
                      hintText: "Email Recovery",
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(250, 42),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ForgetPassPage2(),
                      ),
                    );
                  },
                  child: Text("Kirim Verifikasi")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(250, 42),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => loginPage(),
                      ),
                    );
                  },
                  child: Text("Kembali")),
            ],
          ),
        ]),
      ]),
    );
  }
}
