import 'package:flutter/material.dart';
import 'package:mealssapp/data/datas.dart';
import 'package:mealssapp/screens/drawer.dart';
import 'package:mealssapp/widget/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(child: ListView()),
      appBar: AppBar(
        title: const Text("Bugün Ne Yapsam?"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 40,
          mainAxisSpacing: 40,
        ),
        //  childAspectRatio: 100 / 10),
        children: [
          for (final category in categories) CategoryCard(category: category)
        ],
      ),
    );
  }
}
