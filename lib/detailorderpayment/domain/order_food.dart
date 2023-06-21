class OrderData {
  final int? id;
  final String? productname;
  final String? productphoto;
  final int? price;
  late int qty;
  late bool ordercheck;

  OrderData(
      {this.id,
      this.productname,
      this.productphoto,
      this.price,
      required this.qty,
      required this.ordercheck});
}

// Demo data for our cart

List<OrderData> orderdata = [
  OrderData(
      id: 0,
      productname: 'Roman Spicy Noodle',
      productphoto: 'assets/images/europe food1.png',
      price: 12000,
      qty: 2,
      ordercheck: false),
  OrderData(
      id: 1,
      productname: 'Sweet PanCake',
      productphoto: 'assets/images/morning food1.png',
      price: 8000,
      qty: 3,
      ordercheck: true),
  OrderData(
      id: 2,
      productname: 'Europe Food',
      productphoto: 'assets/images/korea food1.png',
      price: 5000,
      qty: 1,
      ordercheck: false),
];
