class CartModel {
  late String id;
  late String productId;
  late String productName;
  late int initialPrice;
  late int productPrice;
  late int quantity;
  final String color;
  late int cartCounter;
  CartModel({
    required this.id,
    required this.productId,
    required this.productName,
    required this.initialPrice,
    required this.productPrice,
    required this.quantity,
    required this.color,
    required this.cartCounter
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
    id: json['id'],
    productId: json['productId'],
    productName: json['productName'],
    initialPrice: json['initialPrice'],
    productPrice: json['productPrice'],
    color: json['color'],
    quantity: json['quantity'],
      cartCounter:json['cartCounter']
  );
  Map<String, dynamic> toJson() => {
    'id': id,
    'productId': productId,
    'productName': productName,
    'initialPrice': initialPrice,
    'productPrice': productPrice,
    'color': color,
    'quantity': quantity,
    'cartCounter':cartCounter
  };
}

class CategoryModel {
  late String id;
  late String name;
  CategoryModel({
    required this.id,
    required this.name,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json['id'],
    name: json['name'],

  );
  Map<String, dynamic> toJson() => {
    'id': id,
    'name':name,

  };
}

class AddressesModel {
  late String id;
  late String homeAddressP1;
  late String homeAddressP2;
  late String officeAddressP1;
  late String officeAddressP2;
  AddressesModel({
    required this.id,
    required this.homeAddressP1,
    required this.homeAddressP2,
    required this.officeAddressP1,
    required this.officeAddressP2,

  });

  factory AddressesModel.fromJson(Map<String, dynamic> json) => AddressesModel(
    id: json['id'],
    homeAddressP1: json['HomeAddressP1'],
    homeAddressP2: json['HomeAddressP2'],
    officeAddressP1: json['OfficeAddressP1'],
    officeAddressP2: json['OfficeAddressP2'],

  );
  Map<String, dynamic> toJson() => {
    'id': id,
    'HomeAddressP1': homeAddressP1,
    'HomeAddressP2': homeAddressP2,
    'initialPrice': officeAddressP1,
    'OfficeAddressP2': officeAddressP2,

  };
}

class DealsModel {
  late String id;
  late String productName;
  late int initialPrice;
  late int productPrice;
  late int quantity;
  late String location;
  late bool isFavorit;
  DealsModel({
    required this.id,
    required this.productName,
    required this.initialPrice,
    required this.productPrice,
    required this.quantity,
    required this.location,
    required this.isFavorit
  });

  factory DealsModel.fromJson(Map<String, dynamic> json) => DealsModel(
    id: json['id'],
    productName: json['productName'],
    initialPrice: json['initialPrice'],
    productPrice: json['productPrice'],
    location: json['location'],
    quantity: json['quantity'],
      isFavorit:json['isFavorit']
  );
  Map<String, dynamic> toJson() => {
    'id': id,
    'productName': productName,
    'initialPrice': initialPrice,
    'productPrice': productPrice,
    'location': location,
    'quantity': quantity,
    'isFavorit':isFavorit
  };
}


class FavorteModel {
  late String id;
  late String productId;
  late String productName;
  late int initialPrice;
  late int productPrice;
  late int quantity;
  final String color;
  FavorteModel({
    required this.id,
    required this.productId,
    required this.productName,
    required this.initialPrice,
    required this.productPrice,
    required this.quantity,
    required this.color,
  });

  factory FavorteModel.fromJson(Map<String, dynamic> json) => FavorteModel(
    id: json['id'],
    productId: json['productId'],
    productName: json['productName'],
    initialPrice: json['initialPrice'],
    productPrice: json['productPrice'],
    color: json['color'],
    quantity: json['quantity'],
  );
  Map<String, dynamic> toJson() => {
    'id': id,
    'productId': productId,
    'productName': productName,
    'initialPrice': initialPrice,
    'productPrice': productPrice,
    'color': color,
    'quantity': quantity,
  };
}





