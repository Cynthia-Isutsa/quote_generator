import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({super.key});

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(  author: 'Abraham Lincoln',text: 'The best way to predict the future is to create it.'),
    Quote(  author: 'Lao Tzu',text: 'What you do not change you choose.'),
    Quote(  author: 'Lao Tzu',text: 'The journey of a thousand miles begins with one step.'),
    Quote(  author: 'Oscar Wilde',text: 'Be yourself everyone else is taken.'),
    Quote(text: 'I can do all things through Christ who strengthens me.', author: 'Philippians 4:13'),
    Quote(author: 'Rumi', text: 'Let the beauty of what you love be what you do.'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple.'),
  ];
 
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title:  const Text(
          'Awesome Quotes',
          style: TextStyle(
            fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
              
          )
          ),
      ),
    body: Column(
  children: quotes.map((item) => Text('${item.text} - ${item.author}')).toList(),
),

    );
  }
}
