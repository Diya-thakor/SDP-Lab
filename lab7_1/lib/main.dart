import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //This will give title to the application.
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      /*
      // here we are setting an image using 
      body:Center(
        child: Image(
          //using assets of pubspec.yaml we have given this static path which allow us to use static file here
          image: AssetImage('assets/backGround.jpg'),
        ),
      ),
      */
      /*
      body:Center(
        child: ElevatedButton(
          child: Text('Button'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.purple[800],
              //If we apply padding then there will be space between button text and border
              //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              textStyle: TextStyle(
                  fontSize: 40,
      
                  fontWeight: FontWeight.bold)),
      
        ),
      ),
      */
      /*
        body: Center(
          child: FlatButton(
            onPressed: () {
              print('print on consol');
            },
            child: Text('click Me'),
            color: Colors.blue,
          ),
        )
      */
      /*
        body: Center(
          child: IconButton(
            icon: Icon(
              Icons.mail_outline_sharp,
              size: 30.0,
            ),
            tooltip: 'send mail me',
            onPressed: () {
              print('on console print');
            },
      
          ),
        )
      */
      /*
      body: Center(
        child: TextButton.icon(
          icon: Icon(
            Icons.photo_camera,
            color: Colors.greenAccent,
            size: 50.0,
          ),
          label: Text(
            "Gallery",
            style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
              letterSpacing: 2.0,
              backgroundColor: Colors.redAccent,
            ),
            textAlign: TextAlign.start,
          ),
          onPressed :(){},
        ),
      ),
      */
      /*
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextButton.icon(
            icon: Icon(
              Icons.photo_camera,
              color:Colors.greenAccent,
              size: 50.0,
            ),
            label: Text(
              "Gallery",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                letterSpacing: 2.0,
                backgroundColor: Colors.redAccent,
              ),
              textAlign: TextAlign.start,
            ),
            onPressed: () {},
          ),
        ),
      ),
      */

      floatingActionButton: FloatingActionButton(
        //Without onPress this will give an error so using this it can know what to do when someone click on this button
        onPressed: () {},
        //This text will be appear on button
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
