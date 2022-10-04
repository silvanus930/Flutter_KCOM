import 'package:flutter/material.dart';
import 'package:kcom/Page/LoginPage.dart';

class ForgetPassPage2 extends StatelessWidget {
  const ForgetPassPage2({Key? key}) : super(key: key);

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
                height: 72,
              ),
              Center(
                child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(137, 255, 255, 255),
                    ),
                    margin: EdgeInsets.only(left: 48, right: 48),
                    padding:
                        EdgeInsets.only(left: 7, right: 7, bottom: 14, top: 14),
                    child: Text(
                      '''kami telah mengirim kan tautan 
verifkasi ke alamat email 
annadoe@gmail.com. mohon periksa
dan klik pada tautan yang tersedia
dan kembali ke aplikasi.
                    
halaman ini akan diperbarui
otomatis setelah anda 
menekan tautan pada email''',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(250, 42),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Kembali")),
              ),
            ],
          ),
        ]),
      ]),
    );
  }
}
