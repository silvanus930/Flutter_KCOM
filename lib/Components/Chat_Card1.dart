import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatCard1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
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
            padding: const EdgeInsets.only(top: 16, left: 20),
            child: Column(
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 1, 70, 128),
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
                const SizedBox(
                  height: 8,
                ),
                const Text(
                    "It is important to take care of the patient, to be followed by the doctor, but it is a time of great pain and suffering."),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
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
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color(0xFFB8B8B8),
          ),
          Container(
            padding: const EdgeInsets.only(top: 0, left: 20),
            child: Row(
              children: const [
                Icon(Icons.favorite_border_outlined),
                SizedBox(
                  width: 3,
                ),
                Text("Like"),
                SizedBox(
                  width: 20,
                ),
                Icon(CupertinoIcons.chat_bubble),
                SizedBox(
                  width: 3,
                ),
                Text("Comment"),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(255, 5, 1, 1),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 0, left: 39),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Color.fromARGB(255, 1, 70, 128),
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
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                        "It will be possible for the student to be educated, but it will happen at such a time that there will be some great work and pain."),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
