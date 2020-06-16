import 'package:comunik/data/data_sources/local/database/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  final Future<List<User>> favorites;

  const FavoriteContacts({Key key, this.favorites}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Column(
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
            height: 115,
            child: FutureBuilder(
                future: favorites,
                initialData: '',
                builder: (context, snapshot) {
                  return ListView.builder(
                      padding: EdgeInsets.only(left: 10.0, top: 3.0,),
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 35.0,
                                backgroundImage:
                                    AssetImage(snapshot.data[index].imageUrl),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                snapshot.data[index].name,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                }),
          )
        ],
      ),
    );
  }
}
