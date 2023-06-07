class FoodData {
  final int? id;
  final String? productname;
  final String? productphoto;
  final int? price;
  late int qty;

  FoodData(
      {this.id,
      this.productname,
      this.productphoto,
      this.price,
      required this.qty});
}

// Demo data for our cart

List<FoodData> fooddata = [
  FoodData(
      id: 0,
      productname: 'Roman Spicy Noodle',
      productphoto: 'assets/images/europe food1.png',
      price: 12000,
      qty: 0),
  FoodData(
      id: 1,
      productname: 'Sweet PanCake',
      productphoto: 'assets/images/morning food1.png',
      price: 8000,
      qty: 0),
  FoodData(
      id: 2,
      productname: 'Europe Food',
      productphoto: 'assets/images/korea food1.png',
      price: 5000,
      qty: 0),
  FoodData(
      id: 3,
      productname: 'Bamboo chocolate',
      productphoto: 'assets/images/japan food1.png',
      price: 8000,
      qty: 0),
  FoodData(
      id: 4,
      productname: 'Salad Noodle',
      productphoto: 'assets/images/morning food3.png',
      price: 12000,
      qty: 0),
  FoodData(
      id: 5,
      productname: 'Roman Spicy Noodle',
      productphoto: 'assets/images/europe food1.png',
      price: 6000,
      qty: 0),
];
