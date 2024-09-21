class ProductModel {
  final int id;
  final String name;
  final double price;
  final int? quantity;

  const ProductModel(
      {required this.id,
      required this.name,
      required this.price,
      this.quantity = 1});

  ProductModel copyWith({
    int? id,
    String? name,
    double? price,
    int? quantity,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }
}
