import 'package:assignment/bloc/users_bloc.dart';
import 'package:assignment/models/users.dart';
import 'package:assignment/screens/list_of_order.dart';
import 'package:assignment/screens/viewOrder.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserSuccessWidget extends StatelessWidget {
  final BuiltList<Users> users;
  const UserSuccessWidget({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _controller = ScrollController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
            child: ListView.separated(
                controller: _controller
                  ..addListener(() {
                    if (_controller.offset ==
                        _controller.position.maxScrollExtent) {
                      var state =
                          context.read<UsersBloc>().state as UsersSuccess;
                      context.read<UsersBloc>()..add(GetUsers());
                    }
                  }),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  ViewOrder(),
                          ));
                    },
                    child: ListOfOrder(
                      //user: users
                      user: users[index],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 1.0,
                    ),
                itemCount: users.length))
      ],
    );
  }
}
