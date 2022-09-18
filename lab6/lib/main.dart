import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('HELLO FLUTTER...MY FIRST APP'),
          backgroundColor: Colors.yellow[600],
          centerTitle: true,
        ),
        body: Center(
          child: Text('HELLO DU', style: TextStyle(
              fontFamily: 'Inconsolable'
          ),),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () { },
          child: Text('click'),
        ),
    ),
  ));
}


