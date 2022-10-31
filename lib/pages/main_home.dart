// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';


class MainHome extends StatefulWidget {
  
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}


class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 239, 241, 1),
      appBar: AppBar(
        title: Text('E-Commerce'),
        backgroundColor: Color.fromRGBO(217, 3, 89, 1),
        actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.search,))
        ],
      ),
      body: Container()
    );
  }
}