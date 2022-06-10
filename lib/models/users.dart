library users;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users.g.dart';

abstract class Users implements Built<Users, UsersBuilder> {

  // fields go here
    Users._();

  int get id ;
  String get name;
  String get username;


  //to make class serializable
  static Serializer<Users> get serializer => _$usersSerializer;

  factory Users([updates(UsersBuilder b)]) = _$Users;
}