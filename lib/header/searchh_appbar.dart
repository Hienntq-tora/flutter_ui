import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../styles/colors_style.dart';

class SearchAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppbar({
    super.key,
    required this.search,
    this.backPress,
    this.onSearch,
    this.productName,
  });

  final String search;
  final VoidCallback? backPress;
  final ValueChanged<String>? onSearch;
  final String? productName;

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return AppBar(
      backgroundColor: ThemeColors.colorBackgroup,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/images/svg/chevron-left.svg'),
        onPressed: () {
          if (backPress != null) {
            backPress!();
          } else {
            Navigator.of(context).pop();
          }
        },
      ),
      title: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: searchController,
              onChanged: onSearch,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.black87),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.clear, color: Colors.white),
            onPressed: () {
              searchController.clear();
              onSearch?.call('');
            },
          ),
        ],
      ),
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(24),
        child: Text(
          productName ?? '',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
