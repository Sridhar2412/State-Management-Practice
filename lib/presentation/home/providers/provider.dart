import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class Name extends _$Name {
  @override
  String build() {
    return "";
  }

  void setName(String name) {
    state = name;
  }
}
