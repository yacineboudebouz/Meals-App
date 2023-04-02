import 'package:delimeals/widgets/main_drawer.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filter-screen';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters')),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              SwitchListTile(
                title: Text('Gluten-Free'),
                value: _glutenFree,
                subtitle: Text('Only include gluten-free meals'),
                onChanged: (value) {
                  setState(() {
                    _glutenFree = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Vegetarian'),
                value: _vegetarian,
                subtitle: Text('Only  vegetarian meals'),
                onChanged: (value) {
                  setState(() {
                    _vegetarian = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Lactose-Free'),
                value: _lactoseFree,
                subtitle: Text('Only include lactose-free meals'),
                onChanged: (value) {
                  setState(() {
                    _lactoseFree = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text('vegan'),
                value: _vegan,
                subtitle: Text('Only vegan meals'),
                onChanged: (value) {
                  setState(() {
                    _vegan = value;
                  });
                },
              )
            ],
          ))
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
