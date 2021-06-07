class ShirtModel {
  String name;
  List size;
  String price;

  // List image;

  ShirtModel({
    this.name,
    this.price,
    this.size,
  });

  ShirtModel.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    name = json['name'];
    size = json['size'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'size': size,
    };
  }
}
