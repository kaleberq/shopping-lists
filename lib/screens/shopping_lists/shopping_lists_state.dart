import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_lists/domain/models/list_model.dart';
import 'package:shopping_lists/shared/state_generic.dart';

class ShoppingListsState implements StateGeneric<ListModel> {
  final AsyncValue<List<ListModel>> shoppingList;

  const ShoppingListsState({this.shoppingList = const AsyncValue.data([])});

  ShoppingListsState _copyWith({
    AsyncValue<List<ListModel>>? shoppingList,
  }) {
    return ShoppingListsState(
      shoppingList: shoppingList ?? this.shoppingList,
    );
  }

  @override
  loadingState() {
    _copyWith(shoppingList: const AsyncLoading());
  }

  @override
  setValue({required ListModel value}) {
    final List<ListModel> lists = [];
    if (!shoppingList.hasValue) {
      lists.add(value);
    } else {
      lists.addAll(shoppingList.value!);
      lists.add(value);
    }
  }
}
