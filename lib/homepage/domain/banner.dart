class banner {
  int? id;
  String? image;
  String? text;

  banner({
    required this.id,
    required this.image,
    required this.text,
  });
}

List<banner> bannerList = [
  banner(id: 1, image: 'assets/images/card2.png', text: 'Morning Breakfast'),
  banner(id: 2, image: 'assets/images/europe food1.png', text: 'Europe food'),
  banner(id: 3, image: 'assets/images/japan food1.png', text: 'japan food'),
  banner(id: 4, image: 'assets/images/card2.png', text: 'Europe food'),
];
