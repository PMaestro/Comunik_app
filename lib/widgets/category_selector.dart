import 'package:comunik/util/constants.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int _selectedIndex = 0;
  final List<String> categories = ['Favorites','Messages', 'Online', 'Groups', 'Requests', ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: kPrimaryCustomColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.5, vertical: 20),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color: index == _selectedIndex ? Colors.white : Colors.white60,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                ),
              ),
            );
          }),
    );
  }
}
