import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:kcom/Page/EditKataSandi.dart';
import 'package:kcom/Page/EditProfile.dart';
import 'package:kcom/Page/LoginPage.dart';

class AkunPage extends StatelessWidget {
  const AkunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity,
                height: 200,
                image: AssetImage("assets/images/homebar.png"),
                fit: BoxFit.fill,
              ),
              Container(
                padding: EdgeInsets.only(top: 60, left: 20),
                child: Row(
                  children: [
                    Image(
                      width: 17,
                      height: 17,
                      image: AssetImage("assets/images/coin.png"),
                      fit: BoxFit.fill,
                    ),
                    Text(
                      "5.000.000 koin",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          Container(
                            width: 150,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 55,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/fphome.png"),
                                radius: 50,
                              ),
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                minimumSize: Size(30, 30),
                                shape: CircleBorder(
                                    side: BorderSide(
                                        color: Color(0xFFCCCCCC), width: 1)),
                              ),
                              onPressed: () {},
                              child: Image(
                                  width: 20,
                                  height: 20,
                                  image: AssetImage(
                                      "assets/images/penciledit.png"),
                                  fit: BoxFit.fill)),
                        ],
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Anna Doe",
                            style: TextStyle(
                                color: Color(0xFF3A3A3A), fontSize: 28),
                          )),
                      RatingBar.builder(
                        ignoreGestures: true,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 108,
                              ),
                              Text(
                                "Indonesia needs you",
                                style: TextStyle(
                                    color: Color(0xFFEBA350), fontSize: 20),
                              ),
                              SizedBox(
                                width: 43,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: Size(30, 30),
                                    shape: CircleBorder(
                                        side: BorderSide(
                                            color: Color(0xFFCCCCCC),
                                            width: 1)),
                                  ),
                                  onPressed: () {},
                                  child: Image(
                                      width: 20,
                                      height: 20,
                                      image: AssetImage(
                                          "assets/images/penciledit.png"),
                                      fit: BoxFit.fill)),
                            ],
                          )),
                      Divider(
                        height: 20,
                        thickness: 1,
                        color: Color(0xFFB8B8B8),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15, left: 19, bottom: 15),
                              child: GestureDetector(
                                onTap: (() {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => EditProfile(),
                                    ),
                                  );
                                }),
                                child: Text(
                                  "Profile",
                                  style: TextStyle(color: Color(0xFF3A3A3A)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 290,
                            ),
                            Container(
                                child: GestureDetector(
                                    onTap: (() {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => EditProfile(),
                                        ),
                                      );
                                    }),
                                    child: Icon(Icons.arrow_forward_ios))),
                          ],
                        ),
                      ),
                      Divider(
                        height: 20,
                        thickness: 1,
                        color: Color(0xFFB8B8B8),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15, left: 19, bottom: 15),
                              child: Text(
                                "Akun Bank",
                                style: TextStyle(color: Color(0xFF3A3A3A)),
                              ),
                            ),
                            SizedBox(
                              width: 263,
                            ),
                            Container(child: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                      ),
                      Divider(
                        height: 20,
                        thickness: 1,
                        color: Color(0xFFB8B8B8),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15, left: 19, bottom: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => EditKataSandi(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Ubah Kata Sandi",
                                  style: TextStyle(color: Color(0xFF3A3A3A)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 227,
                            ),
                            Container(child: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                      ),
                      Divider(
                        height: 20,
                        thickness: 1,
                        color: Color(0xFFB8B8B8),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 15, left: 19, bottom: 15),
                              child: GestureDetector(
                                onTap: (() {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => loginPage(),
                                    ),
                                  );
                                }),
                                child: Text(
                                  "Log-Out",
                                  style: TextStyle(color: Color(0xFF3A3A3A)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 279,
                            ),
                            Container(
                                child: GestureDetector(
                                    onTap: (() {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => loginPage(),
                                        ),
                                      );
                                    }),
                                    child: Icon(Icons.arrow_forward_ios))),
                          ],
                        ),
                      ),
                      Divider(
                        height: 20,
                        thickness: 1,
                        color: Color(0xFFB8B8B8),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
