class OrderModel {
  final int id;
  final String productname;
  final String productphoto;
  final int price;
  late int qty;

  OrderModel(
      {required this.id,
      required this.productname,
      required this.productphoto,
      required this.price,
      required this.qty});

  OrderModel.fromMap(Map<String, dynamic> item)
      : id = item["id"],
        productname = item['productname'],
        productphoto = item['productphoto'],
        price = item['price'],
        qty = item['qty'];

  Map<String, Object> toMap() {
    return {
      'id': id,
      'productname': productname,
      "productphoto": productphoto,
      "price": price,
      "qty": qty
    };
  }
}

//  OrderModel fromJson(json) {
//     return OrderModel(
//         id: json['id'],
//          productname: json['productname'], 
//          productphoto: json['productphoto'],
//         price: json['price'],
//          qty: json['qty'],);
//   }
//   Map<String, dynamic> toJson() {
//     return {
//       'productname': productname,
//        'productphoto':product };
//   }

