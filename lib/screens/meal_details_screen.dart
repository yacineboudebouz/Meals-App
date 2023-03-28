import 'package:delimeals/dummy.dart';
import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = '/meal-details';

  // Widget buildContainer(Widget child) {
  //   return Container(
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         border: Border.all(color: Colors.grey),
  //         borderRadius: BorderRadius.circular(10),
  //       ),
  //       padding: EdgeInsets.all(10),
  //       height: 120,
  //       width: 300,
  //       child: child);
  // }

  // Widget buildTitle(BuildContext context, String text) {
  //   return Container(
  //     margin: EdgeInsets.symmetric(
  //       vertical: 10,
  //     ),
  //     child: Text(
  //       text,
  //       style: TextStyle(
  //         color: Colors.black,
  //         fontWeight: FontWeight.bold,
  //         fontSize: 25,
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Widget buildTitle(BuildContext context, String text) {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      );
    }

    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    Widget buildContainer(Widget child) {
      return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(10),
          height: h / 5,
          width: w / 1.2,
          child: child);
    }

    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              height: h / 3,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            buildTitle(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 10),
                      child: Card(
                        color: Colors.amberAccent,
                        child: Text(
                          selectedMeal.ingredients[index],
                        ),
                      ),
                    )),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildTitle(context, 'Steps'),
            buildContainer(
              ListView.builder(
                itemBuilder: ((context, index) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text('# ${(index + 1)}'),
                          ),
                          title: Text(selectedMeal.steps[index]),
                        )
                      ],
                    )),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
