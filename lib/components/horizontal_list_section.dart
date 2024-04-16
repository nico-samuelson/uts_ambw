import 'package:flutter/material.dart';
import 'package:uts_ambw/components/horizontal_list.dart';

class HorizontalListSection extends StatelessWidget {
  const HorizontalListSection({
    super.key,
    required this.title,
    required this.detailRoute,
    required this.data,
  });

  final String title;
  final String detailRoute;
  final List<Map<String, String>> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(detailRoute);
                },
                child: Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.teal.shade200,
                  ),
                ),
              ),
            ],
          ),
        ),
        HorizontalList(data: data),
      ],
    );
  }
}
