import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/product_model.dart';
import 'search_body.dart';
import 'search_not_found.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, this.backPress});

  final VoidCallback? backPress;

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  String searchTerm = '';
  List<ProductModel> searchResults = <ProductModel>[];
  List<ProductModel> allProductsList = <ProductModel>[];

  List<ProductModel> getAllProducts() {
    return categories
        .expand((Category category) => category.productList)
        .toList();
  }

  @override
  void initState() {
    super.initState();
    allProductsList = getAllProducts();
  }

  int getCurrentIndex(
      int index, int totalProductCount, List<ProductModel> searchResults) {
    int currentIndex = 0;
    int productCount = 0;
    for (final Category category in categories) {
      final List<ProductModel> productList = category.productList;
      if (index >= productCount && index < productCount + productList.length) {
        currentIndex = categories.indexOf(category);
        break;
      }
      productCount += productList.length;
    }
    return currentIndex;
  }

  void performSearch(String searchTerm) {
    final List<ProductModel> results =
        allProductsList.where((ProductModel product) {
      return product.title.toLowerCase().contains(searchTerm.toLowerCase());
    }).toList();
    setState(() {
      this.searchTerm = searchTerm;
      searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    final int totalProductCount = searchResults.length;

    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: SvgPicture.asset('assets/images/svg/chevron-left.svg'),
                onPressed: () {
                  if (widget.backPress != null) {
                    widget.backPress!();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: TextField(
                  controller: searchController,
                  onChanged: (String value) {
                    setState(
                      () {
                        performSearch(value);
                      },
                    );
                  },
                  enableSuggestions: false,
                  autocorrect: false,
                  smartDashesType: SmartDashesType.disabled,
                  smartQuotesType: SmartQuotesType.disabled,
                  style: const TextStyle(
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.black87),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          if (totalProductCount == 0)
            const Expanded(
              child: SearchNotFoundScreen(),
            )
          else
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Found $totalProductCount results',
                      style: const TextStyle(
                        fontFamily: 'SF Pro Rounded',
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: MasonryGridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 35,
                        itemBuilder: (BuildContext context, int index) {
                          final int currentIndex = getCurrentIndex(
                              index, totalProductCount, searchResults);
                          final bool isOddIndex = index.isOdd;
                          if (isOddIndex) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Tile(
                                index: index,
                                currentIndex: currentIndex,
                              ),
                            );
                          }

                          return Tile(
                            index: index,
                            currentIndex: currentIndex,
                          );
                        },
                        itemCount: totalProductCount,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
