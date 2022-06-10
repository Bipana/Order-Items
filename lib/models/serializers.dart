library serializers;

import 'package:assignment/models/users.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor([
  Users
  ])
// final Serializers serializers = (_$serializers.toBuilder()
//       ..addPlugin(StandardJsonPlugin())
//       ..addBuilderFactory(const FullType(BuiltList, [FullType(Users)]),
//           () => new ListBuilder<Users>()))
//     .build();

final Serializers serializers =(_$serializers.toBuilder()
..addPlugin(StandardJsonPlugin())
..addBuilderFactory(const FullType(BuiltList, [FullType(Users)]), 
()=> ListBuilder<Users>())
)
.build();