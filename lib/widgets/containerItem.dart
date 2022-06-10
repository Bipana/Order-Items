import 'package:assignment/constant.dart';
import 'package:flutter/material.dart';
class ContainerItem extends StatelessWidget {
  const ContainerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 105,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color:kblue),
      child: Icon(
        Icons.photo,
        size: 110,
        color: kteal,
      ),
    );
  }
}