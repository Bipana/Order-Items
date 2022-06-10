import 'dart:async';
import 'dart:convert';
import 'package:assignment/models/serializers.dart';
import 'package:assignment/models/users.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://jsonplaceholder.typicode.com/users';

class UsersRepository{

Future<BuiltList<Users>> getUsers() async{

  final response = await http.get(Uri.parse(baseUrl));

  var users = serializers.deserialize(

    json.decode(response.body), specifiedType: const FullType(BuiltList, [FullType(Users)])
  );

  return users as BuiltList<Users>;
}
}

