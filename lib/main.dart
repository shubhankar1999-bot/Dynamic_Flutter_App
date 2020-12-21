import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes= [
    Quote(author: 'Oscar Wilde',text: 'Be yourself; everyone else is already taken.'),
    Quote(author: 'Albert Einstein',text: "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe."),
    Quote(author: 'Frank Zappa',text: 'So many books, so little time.'),
    Quote(author: 'Shubhankar',text: 'Jio Dhan Dhana Dhan')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("My Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(quote:quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          });
        }).toList(),
      ),
    );
  }
}




