// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListUsers _$$_ListUsersFromJson(Map<String, dynamic> json) => _$_ListUsers(
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => Users.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Users>[],
    );

Map<String, dynamic> _$$_ListUsersToJson(_$_ListUsers instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

_$_Users _$$_UsersFromJson(Map<String, dynamic> json) => _$_Users(
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$_UsersToJson(_$_Users instance) => <String, dynamic>{
      'name': instance.name,
    };
