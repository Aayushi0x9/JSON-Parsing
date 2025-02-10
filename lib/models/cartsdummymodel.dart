class CartsModel {
  int? id, userId, totalProducts, totalQuantity;
  List<Product>? products;
  double? total, discountedTotal;

  CartsModel({
    this.id,
    this.products,
    this.total,
    this.discountedTotal,
    this.userId,
    this.totalProducts,
    this.totalQuantity,
  });

  factory CartsModel.maptomodel(Map<String, dynamic> m1) => CartsModel(
        id: m1["id"],
        products: List<Product>.from(
            m1["products"].map((x) => Product.listtomodel(x))),
        total: m1["total"],
        discountedTotal: m1["discountedTotal"],
        userId: m1["userId"],
        totalProducts: m1["totalProducts"],
        totalQuantity: m1["totalQuantity"],
      );
}

class Product {
  int? id, quantity;
  String? title, thumbnail;
  double? price, total, discountPercentage, discountedTotal;

  Product({
    this.id,
    this.title,
    this.price,
    this.quantity,
    this.total,
    this.discountPercentage,
    this.discountedTotal,
    this.thumbnail,
  });

  factory Product.listtomodel(Map<String, dynamic> m1) => Product(
        id: m1["id"],
        title: m1["title"],
        price: m1["price"],
        quantity: m1["quantity"],
        total: m1["total"],
        discountPercentage: m1["discountPercentage"],
        discountedTotal: m1["discountedTotal"],
        thumbnail: m1["thumbnail"],
      );
}
