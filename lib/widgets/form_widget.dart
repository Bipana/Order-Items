import 'package:assignment/constant.dart';
import 'package:flutter/material.dart';

class SmallForm extends StatefulWidget {
  final String text;
  final IconData icon;
  final String fieldText;

  const SmallForm({
    Key? key,
    required this.text,
    required this.icon,
    required this.fieldText,
  }) : super(key: key);

  @override
  State<SmallForm> createState() => _SmallFormState();
}

class _SmallFormState extends State<SmallForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              widget.text,
              style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
                height: 40,
                width: 340,
                decoration: BoxDecoration(
                    color:kblue,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outlined,
                      color: kgrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        widget.fieldText,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
