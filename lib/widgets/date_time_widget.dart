import 'package:assignment/constant.dart';
import 'package:flutter/material.dart';

class DateTimeWidget extends StatefulWidget {
  final String text;
  final Color color;
  const DateTimeWidget({Key? key, required this.text, required this.color}) : super(key: key);

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 40,
            width: 87,
            child: Center(child: Text(widget.text)),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.8), 
        ),],
              color: widget.color
            ))
      ],
    );
  }
}
