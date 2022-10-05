import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewChatPage extends StatelessWidget {
  const NewChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image(
              width: double.infinity,
              height: 150,
              image: AssetImage("assets/images/komunitas.png"),
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 92,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "New Chat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 25,
                decoration: BoxDecoration(
                    color: Color(0xFFfafafa),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF1CA4C1),
                          ),
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Search user contact",
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF1CA4C1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [],
                          ),
                        ),
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
