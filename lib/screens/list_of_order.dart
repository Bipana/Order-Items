import 'package:assignment/constant.dart';
import 'package:assignment/models/users.dart';
import 'package:flutter/material.dart';

class ListOfOrder extends StatelessWidget {
  final Users user;
  const ListOfOrder({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Stack(
            // fit:  StackFit.loose,
            children: [
              Positioned(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                      topRight: Radius.circular(23.0),
                      topLeft: Radius.circular(23.0),
                    ),
                    color: kteal),
                height: 50.0,
                child: Center(
                  child: Text(
                    "Order",
                    style: TextStyle(
                      color: kwhite,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
              Positioned(
                top: 70,
                left: 90,
                child: Text(
                  user.name.toString(),
                  style: TextStyle(
                    color: kgreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                  top: 105,
                  left: 14,
                  child: CircleAvatar(
                    backgroundColor: kgrey,
                    radius: 30,
                  )),
              Positioned(
                top: 105,
                left: 80,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: kteal,
                          ),
                          Text(
                            "10:30",
                            style: TextStyle(
                              color: kgrey,
                            ),
                          ),
                          Icon(
                            Icons.calendar_month,
                            color: kteal,
                          ),
                          Text(
                            "06 May, 2021",
                            style: TextStyle(
                              color: kgrey,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: [
                          Text(
                            "Prescription consultation.",
                            style: TextStyle(
                              color: kgrey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 95,
                left: 250,
                child: Card(
                  color: kteal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: IconButton(
                    icon: const Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 180),
                child: Divider(
                  thickness: 2.0,
                  color: kgrey,
                ),
              ),
              Positioned(
                  top: 200,
                  left: 120,
                  child: Text(
                    "Finished",
                    style: TextStyle(
                      color: kgreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
