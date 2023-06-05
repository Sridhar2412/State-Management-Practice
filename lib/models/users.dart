import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';
//part creates a generated file
// .g.dart creates a 
part 'users.g.dart';


@freezed 
abstract class ListUsers with _$ListUsers{
  factory ListUsers({
      @Default(<Users>[]) List<Users> users,
  })=_ListUsers;
  factory ListUsers.fromJson(Map<String, dynamic> users) => _$ListUsersFromJson(users);
}

@freezed
abstract class Users with _$Users {
  factory Users({
    @Default("") String name,
  }) = _Users;
   factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

}