import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: EchoList(),
    ));

class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FinalTest();
  }
}

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FinalTest extends StatefulWidget {
  const FinalTest({Key? key}) : super(key: key);

  @override
  State<FinalTest> createState() => _FinalTestState();
}

class _FinalTestState extends State<FinalTest> {
  num age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
        elevation: 0.0,
      ),
      /*
      //For Expanded and Flex widget
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                //This will use space more than it's content size and take space based on whether it's a child of row or column
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    child: Text(
                      'Expanded',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Flexible(child: Container(
                  color: Colors.purple,
                  child: Text(
                    'Flexible',
                    style: TextStyle(fontSize: 25),
                  ),
                ),)
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    child: Text(
                      'Expanded',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    child: Text(
                      'Expanded',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),)
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.purple,
                    child: Text(
                      'Flexible',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Flexible(child: Container(
                  color: Colors.purple,
                  child: Text(
                    'Flexible',
                    style: TextStyle(fontSize: 25),
                  ),
                ),)
              ],
            ),
          ],
        ),
      ),
  */

      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/backGround.jpg'),
                  radius: 50,
                ),
              ),
              Text(
                'NAME: ',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Diya Thakor',
                style: TextStyle(
                  color: Colors.blue[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'AGE',
                style: TextStyle(
                  color: Colors.grey[800],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                age.toString(),
                style: TextStyle(
                  color: Colors.blue[900],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        age += 1;
                      });
                    },
                    child: Icon(Icons.add),
                    backgroundColor: Colors.brown,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        age -= 1;
                      });
                    },
                    child: Icon(Icons.remove),
                    backgroundColor: Colors.brown,
                  ),
                ],
              ),
              SizedBox(height: 50),
              //This 2 buttons will increment and decrement age by 1
              Row(
                children: [
                  Icon(
                    Icons.email_rounded,
                    color: Colors.deepPurple[800],
                  ),
                  SizedBox(width: 12.0),
                  Text(
                    '20ceuog013.ce@ddu.ac.in',
                    style: TextStyle(
                      color: Colors.brown[800],
                      fontSize: 16.0,
                      letterSpacing: 1.5,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  List<Quote> quotes = [
    Quote(author: 'author1', text: 'I see humans but no humanity'),
    Quote(text: 'The truth is realy pure and never simple', author: 'author2'),
    Quote(
        text: 'The time is always right to do what is right',
        author: 'author3'),
  ];
  /*
      //This gives error because quotes is not of type string

      List<String> quotes = [
        Quote(text: 'The truth is realy pure and never simple', author: 'jignesh1'),
      ];
  */
  //We have created our own template for showing our data.
  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        // children: quotes.map((quote) => Text('${quote.text} -${quote.author}')).toList(),
        //   children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}

