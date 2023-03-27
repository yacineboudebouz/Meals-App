import 'package:delimeals/models/category.dart';
import 'package:flutter/material.dart';
import '../dummy.dart';
import 'package:delimeals/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals App'),
      ),
      // gridView, is like a list view but you can specify how the final result looks like
      body: GridView(
        padding: EdgeInsets.all(25),
        // ignore: sort_child_properties_last
        children: DUMMY_CATEGORIES
        // this map function , treat every model then change to list of widgets 
            .map((e) => CategoryItem(e.id, e.title, e.color))
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
