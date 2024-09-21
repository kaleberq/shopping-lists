import 'package:riverpod_annotation/riverpod_annotation.dart';

final shoppingViewModelProvider = Provider.autoDispose<ListViewModel>((ref) {
  return ListViewModel();
});

@riverpod
class ListViewModel {
  ListViewModel();

  test() {}
}
