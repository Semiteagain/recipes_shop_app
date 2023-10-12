import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ExplorePages extends StatelessWidget {
  const ExplorePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Filter and Search Field
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search here...',
                    isDense: true,
                    contentPadding: const EdgeInsets.all(8),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(99),
                      ),
                    ),
                    prefixIcon: const Icon(IconlyLight.search)),
              ),
            ),
            IconButton.filled(
              onPressed: () {},
              icon: const Icon(IconlyLight.filter),
            )
          ],
        )
      ],
    ));
  }
}
