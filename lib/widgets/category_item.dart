import 'package:delimeals/screens/categories_screen.dart';
import 'package:delimeals/screens/category_meals_screeen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color);
  // method to push to a new screen
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        //here we have the arguments we want to send to the pushed screen
        .pushNamed(CategoryMealsScreen.routeName,
            arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    // ink well is widget which accept on tap function as parameter
    return InkWell(
      onTap: (() => selectCategory(context)),
      splashColor: Colors.amber,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
