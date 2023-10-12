import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:recipes_shop_app/pages/cart_page.dart';
import 'package:recipes_shop_app/pages/explore_page.dart';
import 'package:recipes_shop_app/pages/profile_page.dart';
import 'package:recipes_shop_app/pages/services_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    const ExplorePages(),
    const ServicesPage(),
    const CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi Bash 👏',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'Enjoy our services',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton.filledTonal(
                onPressed: () {},
                icon: badges.Badge(
                  badgeContent: const Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Colors.green,
                  ),
                  position: badges.BadgePosition.topEnd(top: -15, end: -12),
                  child: const Icon(IconlyBroken.notification),
                ),
              ),
            ),
          ],
        ));
  }
}
