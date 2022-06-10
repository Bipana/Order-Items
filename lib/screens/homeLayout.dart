import 'package:assignment/bloc/users_bloc.dart';
import 'package:assignment/widgets/user_success_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child:
              BlocBuilder<UsersBloc, UsersState>(builder: ((context, state) {
            if (state is UsersInitial) {
              return const Text('This is initial Phase');
            } else if (state is UsersSuccess) {
              return UserSuccessWidget(users: state.usersList);
            } else {
              return const Text(
                'Something went wrong',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              );
            }
          })))
        ],
      ),
    );
  }
}
