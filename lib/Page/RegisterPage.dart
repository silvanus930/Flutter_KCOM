import 'package:flutter/material.dart';
import 'package:kcom/Page/LoginPage.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(top: 63),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image(
                      width: 241,
                      height: 81,
                      image: AssetImage('assets/images/logokc.png'))),
              Center(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.only(top: 57),
                  width: 250,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Nama",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Alamat",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Kata Sandi",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Konfirmasi Kata Sandi",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ],
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
                        builder: (context) => loginPage(),
                      ),
                    );
                  },
                  child: Text("Sign Up")),
              Container(
                width: 250,
                alignment: Alignment.bottomLeft,
                child: GestureDetector(
                  onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => loginPage(),
                      ),
                    );
                  }),
                  child: Text(
                    "Sudah punya akun?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
