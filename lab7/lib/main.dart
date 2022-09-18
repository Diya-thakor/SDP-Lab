import 'package:flutter/material.dart';

void main() {
  //runApp will run first and then any other thing.
  runApp(MaterialApp(
    home:MyApp(),
  ));
}

//MyApp is stateless widget so we have to override build method
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //This will give title to the application.
      appBar: AppBar(
        title: Text(
            'My App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      /*
      //Adding an image using assets local data
      body:Center(
        child: Image(
          //using assets of pubspec.yaml we have given this static path which allow us to use static file here
          image: AssetImage('assets/backGround.jpg'),
        ),
      ),
      */

      /*
      //Insert image using network
      body:Center(
        child: Image.network(
            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
      ),
      */

      /*
      //Creating a button using ElevatedButton
      body:Center(
        child: ElevatedButton(
          child: Text('Button'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.purple[800],
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
        onPressed: (){},
        //This text will be appear on button
        child: Text(
            'Click'
        ),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
