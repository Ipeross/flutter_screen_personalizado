import 'package:flutter/material.dart';

class DetailedListScreen extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;

  const DetailedListScreen({
    Key? key,
    required this.name,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: [
          FadeInImage(
            //image: NetworkImage('https://images8.alphacoders.com/110/1103710.jpg'), 
            image: NetworkImage( imageUrl ), 
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 3000),
          ),

          Text(description),
        ],
      ),
    );
  }
}
