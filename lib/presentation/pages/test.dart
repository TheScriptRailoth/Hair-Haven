import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Help Center', style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: List.generate(
              tiles.length,
                  (index) => Column(
                children: [
                  Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(width: 1, color: Colors.grey)
                    ),
                    child: _buildExpansionTile(tiles[index]['icon']??'assets/icons/instagram.png', tiles[index]['title'] ?? '', tiles[index]['content'] ?? ''),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  final List<Map<String, String>> tiles = [
    {'icon':'assets/icons/instagram.png','title': 'Instagram', 'content': ''},
    {'icon':'assets/icons/facebook.png','title': 'Facebook', 'content':''},
    {'icon':'assets/icons/phone.png','title': 'Phone Call', 'content':''},
    {'icon':'assets/icons/twitter.png','title': 'Twitter', 'content':''},
    {'icon':'assets/icons/world-wide-web.png','title': 'Website', 'content':''},
    {'icon':'assets/icons/whatsapp.png','title': 'Whatsapp', 'content':''},
  ];


  Widget _buildExpansionTile(String icon, String title, String content) {
    return ExpansionTile(
      leading: Image.asset(icon, width: 12, height: 24,),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w400),),
      children: <Widget>[
        ListTile(
          title: Text(content),
        ),
      ],
    );
  }
}