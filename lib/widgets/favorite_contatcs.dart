import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Contatos Favoritos',
                style: TextStyle(
                  color: Colors.blueGrey[600],
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                ),
                iconSize: 20,
                color: Colors.blueGrey[600],
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          color: Colors.blue,
//          child: ListView.builder(
//              itemCount: favorites.length,
//              itemBuilder: (BuildContext context, int index) {
//                return;
//              }),
        )
      ],
    );
  }
}
