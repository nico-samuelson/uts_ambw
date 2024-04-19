import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({
    super.key,
    required this.data,
  });

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    final faker = Faker();

    return Card(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      margin: const EdgeInsets.only(right: 20),
      child: SizedBox(
        height: 295,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(8),
        //   color: Colors.white,
        //   boxShadow: const [
        //     BoxShadow(
        //       color: Colors.black12,
        //       offset: Offset(0, 2),
        //       blurRadius: 4,
        //     ),
        //   ],
        // ),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Image(
                image: NetworkImage(data['image'] ?? faker.image.image()),
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 8.0,
              ),
              child: Text(
                data['name'] ?? faker.food.restaurant(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 8.0,
              ),
              child: Text(
                data['address'] ?? faker.address.streetAddress(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 8.0,
              ),
              child: Text(
                data['category'] ??
                    "${faker.food.cuisine()}, ${faker.address.country()}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
