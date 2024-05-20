import 'package:flutter/material.dart';

class Livro extends StatefulWidget {
  String nome = " ";
  String sinopse = " ";
  String url = " ";

  Livro(this.nome, this.sinopse, this.url, {super.key});

  @override
  State<Livro> createState() => _LivroState();
}

class _LivroState extends State<Livro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.nome, style: TextStyle(fontFamily: 'Sedan_SC', fontSize: 30),),centerTitle: true, backgroundColor: Colors.brown[200]),

       backgroundColor: Colors.brown[100],
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
        SizedBox(height: 250, width: 350, child: Image.asset('${widget.url}'),),
         Divider(thickness: 1, color: Colors.brown,),
        Text(widget.sinopse, textAlign: TextAlign.justify, style: TextStyle(fontFamily: 'Sedan_SC'),),
        
        SizedBox(height: 30),
        
        ElevatedButton(onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
        ),
         child: Text("Voltar", style: TextStyle(color: Colors.white, fontFamily: 'Sedan_SC'),)),
      ],),),
    );
  }
}