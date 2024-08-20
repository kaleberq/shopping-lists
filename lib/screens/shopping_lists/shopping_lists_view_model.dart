import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_lists/domain/models/list_model.dart';
import 'package:shopping_lists/screens/shopping_lists/shopping_lists_state.dart';

final shoppingListViewModelProvider = StateNotifierProvider.autoDispose<
    ShoppingListsViewModel, ShoppingListsState>((ref) {
  return ShoppingListsViewModel();
});

@riverpod
class ShoppingListsViewModel extends StateNotifier<ShoppingListsState> {
  ShoppingListsViewModel() : super(const ShoppingListsState());

  Future<void> setNewList(ListModel newList) async {
    state = state.loadingState();
    await Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      state = state.setValue(value: newList);
    });
  }

  Future<void> removeList(int id) async {
    state = state.loadingState();
    await Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      //remover
    });
  }
}
