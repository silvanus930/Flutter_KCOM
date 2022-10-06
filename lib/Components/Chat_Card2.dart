import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatCard2 extends StatelessWidget {
  const ChatCard2(demeChatMessag, {
    Key? key,
    required this.username,
    required this.message,
    required this.time,
    required this.date,
  }) : super(key: key);

  final String message;
  final String username;
  final String time;
  final String date;

  static bool isShowTimebar = false;

  ChatCard2 setShowTimebar(flag) {
    isShowTimebar = flag;
    return this;
  }

  String getUserName() {
    var name = username.split(' ');
    if (username.length == 1) return username;
    if (name.length == 1) return name.toString().toUpperCase().substring(0, 2);

    return name[0].toString().toUpperCase().substring(0, 1) +
        name[1].toString().toUpperCase().substring(0, 1);
  }

  Color getUserColor() {
    var name = getUserName();
    int r = (name.codeUnitAt(0) / 'Z'.codeUnits[0]) * 255 as int;
    int g = (name.codeUnitAt(1) / 'Z'.codeUnits[0]) * 255 as int;
    int b = (name.codeUnitAt(0) / 'Z'.codeUnits[0]) * 255 as int;
    return Color.fromARGB(255, r, g, 0);
  }

  Color getUserTextColor() {
    var name = getUserName();
    int r = (name.codeUnitAt(0) / 'Z'.codeUnits[0]) * 255 as int;
    int g = (name.codeUnitAt(1) / 'Z'.codeUnits[0]) * 255 as int;
    int b = (name.codeUnitAt(0) / 'Z'.codeUnits[0]) * 255 as int;
    return Color.fromARGB(255, 255 - r, 255 - g, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        if (isShowTimebar) Text('-------  $date  -------'),
        Container(
          margin: EdgeInsets.all(10),
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
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 25, 60, 163),
                          child: Text(
                            getUserName(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 234, 120)),
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Text(
                          time,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(message,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
