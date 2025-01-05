import 'package:flutter/material.dart';

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
  List<String> quotes = [
    'The best way to predict the future is to create it.',
    'What you do not change you choose.',
    'I can do all things through Christ who strengthens me.',
    'Be yourself everyone else is taken'
    'There is nothing to decalare except my genious'
    'The truth is rarely pure and never simple.',
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
      body:  Column(
        children: quotes.map((item) => Text(item)).toList(),
      ),
    );
  }
}
