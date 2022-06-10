import 'package:assignment/bloc/users_bloc.dart';
import 'package:assignment/repository/api.dart';
import 'package:assignment/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(const MyApp(usersRepository: UsersRepository(),));
// }

void main() {
  runApp(buildApp());
}

Widget buildApp() {
  final usersRepository = UsersRepository();
  return MyApp(usersRepository: usersRepository);
}

class MyApp extends StatefulWidget {
  final UsersRepository usersRepository;
  const MyApp({Key? key, required this.usersRepository}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return RepositoryProvider(
      create:
 (context) => widget.usersRepository,
      
      child: Builder(
        builder: (context) {
          return BlocProvider<UsersBloc>(
            create: (BuildContext context) => UsersBloc(
              usersRepository: context.read<UsersRepository>(),
            )..add(const GetUsers()),
            child: MaterialApp(
              title: 'Games',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(primarySwatch: Colors.amber),
              home: const HomePage(),
            ),
          );
        },
      ),
      // child:
      //  BlocProvider<UsersBloc>(
      //            create: (BuildContext context) => UsersBloc(
      //           usersRepository: context.read<UsersRepository>(),
      //         )..add(const GetUsers()),
      //   child: MaterialApp(
      //     debugShowCheckedModeBanner: false,
      //     title: "Assignment",
      //     home: HomePage(),

      //   ),
      // ),
    );
  }
}
