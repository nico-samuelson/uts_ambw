import 'package:flutter/material.dart';
import 'package:uts_ambw/components/input_border.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: true,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(24.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8.0),
              focusColor: Colors.amber.shade600,
              focusedBorder: inputBorder(true),
              enabledBorder: inputBorder(false),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              ),
              hintText: hint,
            ),
          ),
        ),
      ),
    );
  }
}
