import 'package:dashboard_2/config/responsive.dart';
import 'package:dashboard_2/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/size.dart';

class InfoCard extends StatelessWidget {
  final String icon;
  final String label;
  final String label2;
  const InfoCard(
      {Key? key, required this.icon, required this.label, required this.label2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minWidth: Responsive.isDesktop(context)
              ? 200
              : SizeConfig.screenWidth / 2 - 40),
      padding: EdgeInsets.only(
          top: 20, left: 20, right: Responsive.isMobile(context) ? 20 : 40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(82, 49, 49, 49)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 35,
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            label2,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
        ],
      ),
    );
  }
}
