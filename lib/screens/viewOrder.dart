import 'package:assignment/constant.dart';
import 'package:assignment/widgets/containerItem.dart';
import 'package:assignment/widgets/date_time_widget.dart';
import 'package:assignment/widgets/form_widget.dart';
import 'package:assignment/widgets/saved_button_widget.dart';
import 'package:flutter/material.dart';

class ViewOrder extends StatefulWidget {
  const ViewOrder({
    Key? key,
  }) : super(key: key);

  @override
  State<ViewOrder> createState() => _ViewOrderState();
}

class _ViewOrderState extends State<ViewOrder> {
  late TextEditingController patientNameController;
  late TextEditingController titleController;
  late TextEditingController signatureController;

  @override
  void initState() {
    super.initState();
    patientNameController = TextEditingController();
    titleController = TextEditingController();
    signatureController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    patientNameController.dispose();
    titleController.dispose();
    signatureController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kwhite,
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            "Presription",
            style: TextStyle(color: kwhite),
          ),
        ),
        backgroundColor: kgreen,
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ContainerItem(),
              ContainerItem(),
              ContainerItem(),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ContainerItem(),
              )
            ],
          ),
          const SmallForm(
            icon: Icons.person_outline,
            text: 'Patient Name',
            fieldText: 'Leanne Graham',
          ),
          const SmallForm(
            text: 'Title for medicine',
            icon: Icons.person_outline,
            fieldText: 'High Feaver and Cough',
          ),
          const SmallForm(
            text: 'Signature',
            icon: Icons.person_outline,
            fieldText: '2823755545464747',
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Icon(
                  Icons.date_range,
                  size: 50,
                  color: kgreen,
                ),
              ),
              DateTimeWidget(text: "2021", color: kgreen),
              const VerticalDivider(
                width: 0.5,
              ),
              DateTimeWidget(text: "/02", color: kgreen),
              const VerticalDivider(
                width: 0.5,
              ),
              DateTimeWidget(text: "/08", color: kteal),
            ],
          ),
          const SizedBox(height: 20),
          const SavedButton()
        ],
      ),
    );
  }
}
