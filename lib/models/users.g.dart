// GENERATED CODE - DO NOT MODIFY BY HAND

part of users;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Users> _$usersSerializer = new _$UsersSerializer();

class _$UsersSerializer implements StructuredSerializer<Users> {
  @override
  final Iterable<Type> types = const [Users, _$Users];
  @override
  final String wireName = 'Users';

  @override
  Iterable<Object?> serialize(Serializers serializers, Users object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Users deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Users extends Users {
  @override
  final int id;
  @override
  final String name;
  @override
  final String username;

  factory _$Users([void Function(UsersBuilder)? updates]) =>
      (new UsersBuilder()..update(updates))._build();

  _$Users._({required this.id, required this.name, required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Users', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Users', 'name');
    BuiltValueNullFieldError.checkNotNull(username, r'Users', 'username');
  }

  @override
  Users rebuild(void Function(UsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersBuilder toBuilder() => new UsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Users &&
        id == other.id &&
        name == other.name &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Users')
          ..add('id', id)
          ..add('name', name)
          ..add('username', username))
        .toString();
  }
}

class UsersBuilder implements Builder<Users, UsersBuilder> {
  _$Users? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  UsersBuilder();

  UsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Users;
  }

  @override
  void update(void Function(UsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Users build() => _build();

  _$Users _build() {
    final _$result = _$v ??
        new _$Users._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Users', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Users', 'name'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'Users', 'username'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
