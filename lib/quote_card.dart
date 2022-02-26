import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function() delete; //We can pass function as argument!

  //Constructor
  const QuoteCard(this.quote, this.delete);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.txt,
              //As we use it directly (the attribut) we don't need to do the {$...}
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6),
            Text(
                '- ${quote.author}',
                //I've chose to add a - before the author, so here I need to use the ${...} thingy.
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                )
            ),
            SizedBox(height: 8), //give some space
            TextButton.icon(
                onPressed: delete,
                label: Text("delete quote"),
                icon: Icon(Icons.delete)
            ),
          ],
        ),
      ),
    );
  }
}