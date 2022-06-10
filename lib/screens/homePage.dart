import 'package:assignment/constant.dart';
import 'package:assignment/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: kwhite, 
          ),
          leading: const Icon(
            Icons.arrow_back_sharp,
          ),
          backgroundColor: kgreen,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Completed Order',
              style: TextStyle(color: kwhite),
            ),
          )),
      body:
          const BottomNavigation(),
    );
  }
}
