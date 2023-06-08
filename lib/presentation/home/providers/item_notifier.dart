import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'item_notifier.g.dart';

@riverpod
Future<List<String>> fetchItem(FetchItemRef ref, {required int page}) async {
  await Future.delayed(const Duration(seconds: 3));
  return List.generate(50, (index) => " Hello $page $index");
}
