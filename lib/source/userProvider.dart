import 'package:new_app/models/users.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'userProvider.g.dart';

@riverpod
class UserState extends _$UserState {
  late final users = {
    "users": [
      {"name": "Tom"},
      {"name": "Jim"},
      {"name": "Rahul"},
      {"name": "Kartik"},
      {"name": "Mehul"}
    ]
  };
  @override
  ListUsers build() {
    return ListUsers.fromJson(users);
  }

  void updateUser(int index, String name) {
    final newList = [...state.users]..[index] =
        state.users[index].copyWith(name: name);
    //Update State
    state = state.copyWith(users: newList);
  }

  void delete(int index) {
    final newList = [...state.users]
      ..[index] = state.users[index]
      ..removeAt(index);

    //Update State
    state = state.copyWith(users: newList);
  }

  void add( String name){
    final newUser= Users.fromJson({'name':name});

    final newList = [...state.users]..add(newUser);

    //Update State
    state = state.copyWith(users: newList);
  }
}
