import 'package:shopping_lists/domain/models/list_model.dart';

class ShoppingListsModel {
  final List<ListModel> lists;

  const ShoppingListsModel({required this.lists});

  ShoppingListsModel copyWith({
    List<ListModel>? lists,
  }) {
    return ShoppingListsModel(
      lists: lists ?? this.lists,
    );
  }
}
