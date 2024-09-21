import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_lists/domain/models/shopping_model.dart';
import 'package:shopping_lists/domain/models/typedef.dart';
import 'package:shopping_lists/screens/shopping_lists/shopping_lists_state.dart';

final shoppingListViewModelProvider = StateNotifierProvider.autoDispose<
    ShoppingListsViewModel, ShoppingListsState>((ref) {
  return ShoppingListsViewModel();
});

@riverpod
class ShoppingListsViewModel extends StateNotifier<ShoppingListsState> {
  ShoppingListsViewModel() : super(const ShoppingListsState());

  void setNewList(ShoppingModel shopping) {
    setLoadingState();
    Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      setValue(value: shopping);
    });
  }

  void removeList(int id) async {
    setLoadingState();
    Future.delayed(const Duration(seconds: 2)).whenComplete(() {});
  }

  void setLoadingState() {
    state = state.copyWith(asyncShoppingList: const AsyncLoading());
  }

  void setValue({required ShoppingModel value}) {
    final ShoppingList lists = [];

    if (!state.asyncShoppingList.hasValue) {
      lists.add(value);
    } else {
      lists.addAll(state.asyncShoppingList.value!);
      lists.add(value);
    }

    state = state.copyWith(asyncShoppingList: AsyncData(lists));
  }
}
