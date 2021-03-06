import 'package:flutter/material.dart';

import '../Models/Catalog.dart';
import '../Models/ComicSoonTopSimpleList.dart';
import '../Models/ComicSoonfullList.dart';


class Movie extends StatefulWidget {
  @override
  _ComicSoonTabState createState() => _ComicSoonTabState();
}

class _ComicSoonTabState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(Icons.notifications, color: Colors.white),
          ),
        ),
        title: Text("Notifications", style: TextStyle(color: Colors.white)),
        actions: <Widget>[Icon(Icons.arrow_forward_ios)],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 175,
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ComicSoonSimpleList(index);
                }),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 321,
            child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return ComicSoonFullList(index);
                }),
          )
        ],
      ),
    );
  }
}
