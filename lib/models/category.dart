import 'package:flutter/material.dart';
// category class which contain all the attributes of a category
class Category {
  final String id;
  final String title;
  final Color color;

 const Category({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
