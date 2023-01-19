import 'package:flutter/material.dart';
import 'package:untitled/Quote/Quote.dart';
import 'package:untitled/Quote/quote_card.dart';

void main() {
  runApp(MaterialApp(
    home:ProfilePage(),
  ));
}


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  List<Quote> quotes=[
   Quote(text: "Bloque les publicités gênantes sur Facebook, YouTube et d'autres sites grâce à ce bloqueur de publicité pour Firefox. ", author: "zakaria"),
    Quote(text: "Bloque les publicités gênantes sur Facebook,  ce bloqueur de publicité pour Firefox. ", author: "kawtar"),
    Quote(text: "Bloque les publicités gênantes sur Facebook, YouTube et d'autres sites g publicité pour Firefox. ", author: "sami")
  ];
  
  Widget quoteTemplate(quote){
   return CardWidget(quote, delete:(){
     setState(() {
       quotes.remove(quote);
     });
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Awesome Quotes'),
          backgroundColor: Colors.deepOrangeAccent,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child:Column(
            children: quotes.map((quote) => quoteTemplate(quote)).toList(),
          )
        ),
    );
  }
}
