import 'package:shopping_lists/domain/models/product_model.dart';

class ListModel {
  final int id;
  final String name;
  final List<ProductModel>? products;
  final double totalPrice;
  final DateTime createdAt;
  final DateTime? updatedAt;

  ListModel(
      {required this.id,
      required this.name,
      required this.products,
      required this.createdAt,
      required this.updatedAt})
      : totalPrice = _calculateTotalPrice(products);

  static double _calculateTotalPrice(List<ProductModel>? products) {
    double totalPrice = 0;
    if (products != null) {
      for (var product in products) {
        totalPrice += product.price;
      }
    }

    return totalPrice;
  }
}
