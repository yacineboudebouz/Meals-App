import 'package:delimeals/screens/categories_screen.dart';
import 'package:delimeals/screens/category_meals_screeen.dart';
import 'package:delimeals/screens/filter_screen.dart';
import 'package:delimeals/screens/meal_details_screen.dart';
import 'package:delimeals/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        // canvasColor: Color.fromARGB(255, 254, 229, 1),
      ),
      title: 'DeliMeals',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // home: const CategoriesScreen(),
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailsScreen.routeName: (context) => MealDetailsScreen(),
        FilterScreen.routeName:(context) => FilterScreen(), 
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   return MaterialPageRoute(
      //     builder: ((context) => CategoriesScreen()),
      //   );
      // },
    );
  }
}
