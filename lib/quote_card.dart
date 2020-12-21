import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
        color: Colors.blueGrey[300],
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[600]
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 8.0),
              FlatButton.icon(
                onPressed: delete,
                label:Text('Delete'),
                icon: Icon(Icons.delete),
                color: Colors.red[800],
              )
            ],
          ),
        )
    );
  }
}