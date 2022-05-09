import 'package:flutter/material.dart';

class Appbaritems extends StatelessWidget {
  const Appbaritems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Text(
          //   "Good Morning",
          //   style: TextStyle(
          //       fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
          // ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Febrian Mebiyantara",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          SizedBox(
            width: 120,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
                size: 20,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help_rounded,
                size: 20,
              ))
        ],
      ),
    );
  }
}
