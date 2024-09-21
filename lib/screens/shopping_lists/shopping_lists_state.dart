import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_lists/domain/models/typedef.dart';

class ShoppingListsState {
  final AsyncShoppingLists asyncShoppingList;

  const ShoppingListsState({this.asyncShoppingList = const AsyncLoading()});

  ShoppingListsState copyWith({
    AsyncShoppingLists? asyncShoppingList,
  }) {
    return ShoppingListsState(
      asyncShoppingList: asyncShoppingList ?? this.asyncShoppingList,
    );
  }
}
