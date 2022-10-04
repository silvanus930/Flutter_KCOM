import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kcom/Page/ChatPage.dart';

class komunitasPage extends StatelessWidget {
  const komunitasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
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
                  height: 87,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      "Komunitas",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 112,
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ChatPage(),
                            ),
                          );
                        }),
                        child: Icon(
                          CupertinoIcons.chat_bubble_2_fill,
                          color: Colors.white,
                          size: 30,
                        ),
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
                Container(
                  padding:
                      EdgeInsets.only(top: 0, right: 20, left: 20, bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.send),
                      hintText: "What's on your mind",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    width: 336,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 5,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 16, left: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 1, 70, 128),
                                    child: Text("U1"),
                                  ),
                                  SizedBox(
                                    width: 11,
                                  ),
                                  Text("User Satu"),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 6,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text("1h"),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                    Text("10"),
                                    SizedBox(
                                      width: 21,
                                    ),
                                    Icon(
                                      CupertinoIcons.chat_bubble_fill,
                                      color: Colors.green,
                                    ),
                                    Text("1"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFB8B8B8),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 0, left: 20),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text("Like"),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Icon(CupertinoIcons.chat_bubble),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text("Comment"),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color(0xFFB8B8B8),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 0, left: 39),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 12,
                                        backgroundColor:
                                            Color.fromARGB(255, 1, 70, 128),
                                        child: Text("U5"),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        "User lima",
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.circle,
                                        size: 6,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "1h",
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                      "Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
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
      ),
    );
  }
}
