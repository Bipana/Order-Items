import 'package:assignment/constant.dart';
import 'package:flutter/material.dart';

class SavedButton extends StatefulWidget {
  const SavedButton({Key? key}) : super(key: key);

  @override
  State<SavedButton> createState() => _SavedButtonState();
}

class _SavedButtonState extends State<SavedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: kgreen,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            'Saved',
            style: TextStyle(
              color: Color.fromARGB(255, 248, 248, 252),
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
