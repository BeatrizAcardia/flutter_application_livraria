import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Minha livraria", style: TextStyle(fontFamily: 'Sedan_SC', fontSize: 40)), backgroundColor: Colors.brown[200],),
      
    );
  }
}