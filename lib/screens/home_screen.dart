import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quotes_app/models/api.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <Quotes> sayings = [];

  @override
  void initState() {
    super.initState();
    fetchquotes();
  }

  void fetchquotes() async {
    const url ="https://dummyjson.com/quotes";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);

    final quotes = json['quotes'] as List<dynamic>;
    final transformed = quotes.map((e) {
      return Quotes(id: e['id'], 
      quote: e['quote'], 
      author: e['author']);
    }).toList();

    setState(() {
     sayings = transformed;
    });

  }

    @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes App", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(itemCount: sayings.length,itemBuilder: (context, index) {
        final user = sayings[index];
        final id = user.id;
        final quote = user.quote;
        final author = user.author; 
        
        return ListTile(
          leading: ClipRRect(borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                shape: BoxShape.rectangle,
              ),
              child: Center(child: Text(id.toString(), style: TextStyle(fontSize: 18),)))),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(quote, style: TextStyle(backgroundColor: author == "Abu Bakr (R.A)" || author == "Muhammad Ali" || author == "Umar ibn Al-Khattāb (R.A)" || author == "Ali ibn Abi Talib (R.A)" ? Colors.lightGreen.shade200  
              : Colors.pink.shade100 ),),
              const SizedBox(height: 10,),
              
              Text("~ $author", style: TextStyle(backgroundColor: Colors.grey.shade300),),
              const SizedBox(height: 20,)

              
            ],
          ),
        );
      }),
    );
  }
}