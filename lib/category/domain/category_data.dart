class Category {
  int? id;
  String? categoryname;
  String? categoryphoto;
  int? price;

  Category({
    required this.id,
    required this.categoryname,
    required this.categoryphoto,
    required this.price,
  });
}

List<Category> categorydata = [
  Category(
      id: 1,
      categoryname: 'Noodle Salad',
      price: 5000,
      categoryphoto: 'assets/images/morning food3.png'),
  Category(
      id: 2,
      categoryname: 'Pan Cake',
      price: 4000,
      categoryphoto: 'assets/images/card2.png'),
  Category(
      id: 3,
      categoryname: 'Seafood Soup',
      price: 5000,
      categoryphoto: 'assets/images/korea food1.png'),
  Category(
      id: 4,
      categoryname: 'Pizza',
      price: 10000,
      categoryphoto: 'assets/images/europe food1.png'),
  Category(
      id: 5,
      categoryname: 'Sushi',
      price: 7000,
      categoryphoto: 'assets/images/japan food1.png'),
  Category(
      id: 6,
      categoryname: 'Noodle Salad',
      price: 5000,
      categoryphoto: 'assets/images/card2.png'),
  Category(
      id: 7,
      categoryname: 'Seafood Soup',
      price: 5000,
      categoryphoto: 'assets/images/korea food1.png'),
  Category(
      id: 8,
      categoryname: 'Pizza',
      price: 10000,
      categoryphoto: 'assets/images/europe food1.png'),
  Category(
      id: 9,
      categoryname: 'Noodle Salad',
      price: 5000,
      categoryphoto: 'assets/images/card2.png'),
  Category(
      id: 10,
      categoryname: 'Pan Cake',
      price: 4000,
      categoryphoto: 'assets/images/card2.png'),
  Category(
      id: 11,
      categoryname: 'Seafood Soup',
      price: 5000,
      categoryphoto: 'assets/images/korea food1.png'),
  Category(
      id: 12,
      categoryname: 'Pizza',
      price: 10000,
      categoryphoto: 'assets/images/europe food1.png'),
];
