import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 55,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/fphome.png"),
                          radius: 50,
                        ),
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
                          child: Text(
                            "Indonesia needs you",
                            style: TextStyle(
                                color: Color(0xFFEBA350), fontSize: 20),
                          )),
                      Divider(
                        height: 20,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Color(0xFFB8B8B8),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Image(
                                      height: 64,
                                      width: 64,
                                      image: AssetImage(
                                          "assets/images/alkitab.png")),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("Alkitab",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF1399C6),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Image(
                                      height: 64,
                                      width: 64,
                                      image: AssetImage(
                                          "assets/images/pesanmimbar.png")),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("Pesan Mimbar",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF1399C6),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Image(
                                      height: 64,
                                      width: 64,
                                      image: AssetImage(
                                          "assets/images/pesandoa.png")),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("Pesan Doa",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF1399C6),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Image(
                                      height: 64,
                                      width: 64,
                                      image: AssetImage(
                                          "assets/images/proyek.png")),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("Proyek",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF1399C6),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Image(
                                      height: 64,
                                      width: 64,
                                      image: AssetImage(
                                          "assets/images/donasisaya.png")),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("Donasi Anda",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF1399C6),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Image(
                                      height: 64,
                                      width: 64,
                                      image: AssetImage(
                                          "assets/images/topupkoin.png")),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("Top Up Koin",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF1399C6),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Image(
                                      height: 64,
                                      width: 64,
                                      image: AssetImage(
                                          "assets/images/ecommerce.png")),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text("E-Commerce",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF1399C6),
                                  )),
                            ],
                          ),
                        ],
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
