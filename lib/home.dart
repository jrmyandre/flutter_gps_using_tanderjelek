import 'package:flutter/material.dart';
import 'main.dart';

//make HomePage()
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      //make body
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('History'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HistoryPage()));
            },
          ),
        ],
      )
    );
  }
}
