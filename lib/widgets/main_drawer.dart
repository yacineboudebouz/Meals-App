import 'package:delimeals/screens/filter_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(
      IconData icon, String text, String route, BuildContext cxt) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: () {
        Navigator.of(cxt).pushReplacementNamed(route);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Cooking Up !',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.amber),
            ),
          ),
          SizedBox(height: 20),
          buildListTile(Icons.restaurant, 'Meals', '/', context),
          buildListTile(
              Icons.settings, 'Filters', FilterScreen.routeName, context),
        ],
      ),
    );
  }
}
