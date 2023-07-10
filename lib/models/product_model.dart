class ProductModel {
  final String title;
  final String imagePath;
  final String number;
  final List<String> imageList;

  ProductModel({required this.title, required this.imagePath, required this.number, required this.imageList});
}

class Category {
  final String title;
  List<ProductModel> productList;
  Category({required this.title, required this.productList});
}

List<Category> categories = [
  Category(
    title: 'Foods',
    productList: [
      ProductModel(
          title: 'Veggie tomato mix',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Spicy fish sauce',
          imagePath:'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),
  Category(
    title: 'Drinks',
    productList: [
      ProductModel(
          title: 'Wine',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N1,900',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Coffee',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N2,300.99',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),
  Category(
    title: 'Snack',
    productList: [
      ProductModel(
          title: 'Cookies',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Cakes',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),  
  Category(
    title: 'Snack1',
    productList: [
      ProductModel(
          title: 'Cookies',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Cakes',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),  
  Category(
    title: 'Snack2',
    productList: [
      ProductModel(
          title: 'Cookies',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Cakes',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),  
  Category(
    title: 'Snack3',
    productList: [
      ProductModel(
          title: 'Cookies',
          imagePath: 'assets/images/product_image/product_1.png',
          number: 'N1,900',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
      ProductModel(
          title: 'Cakes',
          imagePath: 'assets/images/product_image/product_2.png',
          number: 'N2,300.99',
          imageList: [
            'assets/images/product_image/product_1.png',
            'assets/images/product_image/product_2.png',
          ]),
    ],
  ),  
];