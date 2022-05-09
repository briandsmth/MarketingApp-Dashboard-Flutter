import 'package:dashboard_2/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Potential",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Colors.white)),
                  SizedBox(
                    width: 5,
                  ),
                  GradientText('growth',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.cyan, Colors.cyanAccent]))
                ],
              ),
              Text("with our tools",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.white)),
            ],
          ),
        )
      ],
    );
  }
}
