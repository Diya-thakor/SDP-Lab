import 'package:flutter/material.dart';
import 'quote.dart';
import 'package:lab9/quote_card.dart';
void main() => runApp(MaterialApp(
  home: EchoList(),
));

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
      Widget quoteTemplate(quote) {
        return QuoteCard(quote:quote);
      }
  */

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
        // children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        // children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}


