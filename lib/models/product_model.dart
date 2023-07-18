class ProductModel {
  ProductModel(
      {required this.title,
      required this.imagePath,
      required this.number,
      required this.imageList});
  final String title;
  final String imagePath;
  final String number;
  final List<String> imageList;
}

class Category {
  Category({required this.title, required this.productList});
  final String title;
  List<ProductModel> productList;
}

List<Category> categories = <Category>[
  Category(
    title: 'Foods',
    productList: <ProductModel>[
      ProductModel(
          title: 'Veggie tomato mix',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Spicy fish sauce',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Spicy fish sauce',
          imagePath: 'assets/images/product_image/product_3.png',
          number: 'N2,300.99',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Spicy fish sauce',
          imagePath: 'assets/images/product_image/product_4.png',
          number: 'N2,300.99',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),
  Category(
    title: 'Foods1',
    productList: <ProductModel>[
      ProductModel(
          title: 'Veggie tomato mix',
          imagePath: 'assets/images/product_image/product_3.png',
          number: 'N1,900',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Spicy fish sauce',
          imagePath: 'assets/images/product_image/product_4.png',
          number: 'N2,300.99',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),
  Category(
    title: 'Drinks',
    productList: <ProductModel>[
      ProductModel(
          title: 'Wine',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N1,900',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Coffee',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N2,300.99',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Veggie tomato mix',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Spicy fish sauce',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),
  Category(
    title: 'Snack',
    productList: <ProductModel>[
      ProductModel(
          title: 'Cookies',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Cakes',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),
  Category(
    title: 'Snack1',
    productList: <ProductModel>[
      ProductModel(
          title: 'Cookies',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Cakes',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),
  Category(
    title: 'Snack2',
    productList: <ProductModel>[
      ProductModel(
          title: 'Cookies',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Cakes',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),
  Category(
    title: 'Snack3',
    productList: <ProductModel>[
      ProductModel(
          title: 'Cookies',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Cakes',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: <String>[
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),
];
