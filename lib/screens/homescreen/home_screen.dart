import 'package:comunik/util/constants.dart';
import 'package:comunik/widgets/category_selector.dart';
import 'package:comunik/widgets/favorite_contatcs.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryCustomColor,
      appBar: AppBar(
        backgroundColor: kPrimaryCustomColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            'Chats',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
