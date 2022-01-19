class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.rating = 0.0,
  });

  String title;
  int lessonCount;
  int money;
  double rating;
  String imagePath;

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/picture-js.jpg',
      title: 'JavaScript untuk pemula',
      lessonCount: 8,
      money: 123,
      rating: 4.6,
    ),
    
    Category(
      imagePath: 'assets/picture-kotlin.jpg',
      title: 'Kotlin 101',
      lessonCount: 20,
      money: 270,
      rating: 4.2,
    ),
    Category(
      imagePath: 'assets/picture-flutter.jpg',
      title: 'Flutter 101',
      lessonCount: 30,
      money: 300,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/picture-digitalMarket.jpg',
      title: 'Digital Marketing',
      lessonCount: 7,
      money: 127,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/picture-market.jpg',
      title: 'Marketing',
      lessonCount: 4,
      money: 55,
      rating: 4.9,
    ),
  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/picture-html.jpg',
      title: 'HTML untuk pemula',
      lessonCount: 12,
      money: 52,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/picture-css.jpg',
      title: 'CSS untuk pemula',
      lessonCount: 12,
      money: 255,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/picture-laravel.jpg',
      title: 'Laravel untuk pemula',
      lessonCount: 16,
      money: 188,
      rating: 4.5,
    ),
  ];
}
