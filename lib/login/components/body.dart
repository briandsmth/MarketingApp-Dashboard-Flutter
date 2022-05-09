import 'package:dashboard_2/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:dashboard_2/dashboard/dashboard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset("assets/images/logo2.png"),
          const Text(
            "Marketing tools to",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Text(
            "help in your growth",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 45,
            width: size.width - 2 * 45,
            child: SignInButton(
              Buttons.Google,
              text: 'Continue with google',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Dashboardscreen();
                }));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Register an new",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(
                width: 3,
              ),
              Text("Account",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan)),
            ],
          )
        ],
      )),
    );
  }
}
