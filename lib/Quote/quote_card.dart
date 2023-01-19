import 'package:flutter/material.dart';
import 'package:untitled/Quote/Quote.dart';

class CardWidget extends StatelessWidget {
  final Quote quote  ;
  final Function delete;
  CardWidget(this.quote, {required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin:EdgeInsets.fromLTRB(10, 10, 10, 0),
        child:Padding(
            padding: EdgeInsets.all(16),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(quote.author,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(quote.text,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 8),
              TextButton.icon(
                onPressed: (){
                  delete();
                },
                icon: Icon(Icons.delete),
                label: Text('Delete'),
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  padding: EdgeInsets.all(15),
                ),
              ),

              ],
            )
        )
    );
  }
}
