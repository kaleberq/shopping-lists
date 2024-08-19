class ProductModel {
  final int id;
  final String name;
  final double price;

  const ProductModel(
      {required this.id, required this.name, required this.price});

  ProductModel copyWith({
    int? id,
    String? name,
    double? price,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }
}
