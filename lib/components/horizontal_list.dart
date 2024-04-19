import 'package:flutter/material.dart';
import 'package:uts_ambw/components/small_card.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({
    super.key,
    required this.data,
  });

  final List<Map<String, String>> data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 20),
      physics: const PageScrollPhysics(),
      clipBehavior: Clip.none,
      child: Row(
        children: data.map(
          (d) {
            return SmallCard(data: d);
          },
        ).toList(),
      ),
    );
  }
}
