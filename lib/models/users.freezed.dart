// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListUsers _$ListUsersFromJson(Map<String, dynamic> json) {
  return _ListUsers.fromJson(json);
}

/// @nodoc
mixin _$ListUsers {
  List<Users> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListUsersCopyWith<ListUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListUsersCopyWith<$Res> {
  factory $ListUsersCopyWith(ListUsers value, $Res Function(ListUsers) then) =
      _$ListUsersCopyWithImpl<$Res, ListUsers>;
  @useResult
  $Res call({List<Users> users});
}

/// @nodoc
class _$ListUsersCopyWithImpl<$Res, $Val extends ListUsers>
    implements $ListUsersCopyWith<$Res> {
  _$ListUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Users>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListUsersCopyWith<$Res> implements $ListUsersCopyWith<$Res> {
  factory _$$_ListUsersCopyWith(
          _$_ListUsers value, $Res Function(_$_ListUsers) then) =
      __$$_ListUsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Users> users});
}

/// @nodoc
class __$$_ListUsersCopyWithImpl<$Res>
    extends _$ListUsersCopyWithImpl<$Res, _$_ListUsers>
    implements _$$_ListUsersCopyWith<$Res> {
  __$$_ListUsersCopyWithImpl(
      _$_ListUsers _value, $Res Function(_$_ListUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$_ListUsers(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Users>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListUsers implements _ListUsers {
  _$_ListUsers({final List<Users> users = const <Users>[]}) : _users = users;

  factory _$_ListUsers.fromJson(Map<String, dynamic> json) =>
      _$$_ListUsersFromJson(json);

  final List<Users> _users;
  @override
  @JsonKey()
  List<Users> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'ListUsers(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListUsers &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListUsersCopyWith<_$_ListUsers> get copyWith =>
      __$$_ListUsersCopyWithImpl<_$_ListUsers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListUsersToJson(
      this,
    );
  }
}

abstract class _ListUsers implements ListUsers {
  factory _ListUsers({final List<Users> users}) = _$_ListUsers;

  factory _ListUsers.fromJson(Map<String, dynamic> json) =
      _$_ListUsers.fromJson;

  @override
  List<Users> get users;
  @override
  @JsonKey(ignore: true)
  _$$_ListUsersCopyWith<_$_ListUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

Users _$UsersFromJson(Map<String, dynamic> json) {
  return _Users.fromJson(json);
}

/// @nodoc
mixin _$Users {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersCopyWith<Users> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) then) =
      _$UsersCopyWithImpl<$Res, Users>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$UsersCopyWithImpl<$Res, $Val extends Users>
    implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$$_UsersCopyWith(_$_Users value, $Res Function(_$_Users) then) =
      __$$_UsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_UsersCopyWithImpl<$Res> extends _$UsersCopyWithImpl<$Res, _$_Users>
    implements _$$_UsersCopyWith<$Res> {
  __$$_UsersCopyWithImpl(_$_Users _value, $Res Function(_$_Users) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Users(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Users implements _Users {
  _$_Users({this.name = ""});

  factory _$_Users.fromJson(Map<String, dynamic> json) =>
      _$$_UsersFromJson(json);

  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'Users(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Users &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersCopyWith<_$_Users> get copyWith =>
      __$$_UsersCopyWithImpl<_$_Users>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersToJson(
      this,
    );
  }
}

abstract class _Users implements Users {
  factory _Users({final String name}) = _$_Users;

  factory _Users.fromJson(Map<String, dynamic> json) = _$_Users.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_UsersCopyWith<_$_Users> get copyWith =>
      throw _privateConstructorUsedError;
}
