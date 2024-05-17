// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_livraria/livro.dart';

class Principal extends StatefulWidget {
  const Principal();

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override

  final capitaes = SizedBox(height: 190, width: 190, child: Image.asset('assets/imgs/capitaes.webp'));
  final laranja = SizedBox(height: 190, width: 190, child: Image.asset('assets/imgs/peDeLaranja.jpg'));
  final quarto = SizedBox(height: 190, width: 190, child: Image.asset('assets/imgs/quarto.jpg'));
  final helena = SizedBox(height: 190, width: 190, child: Image.asset('assets/imgs/helena.jpg'));

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Minha livraria",
          style: TextStyle(fontFamily: 'Sedan_SC', fontSize: 40),
        ),
        backgroundColor: Colors.brown[200],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/desktop-wallpaper-neutral-minimalist.jpg'),
            fit: BoxFit.contain,
          ),
        ),

        child: Column(
          children: [

            SizedBox(height: 30),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                child: capitaes,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Livro("Capitães de areia", "Pedro Bala, Professor, Gato, Sem Pernas e Boa Vida são adolescentes abandonados por suas famílias, que crescem nas ruas de Salvador e vivem em comunidade no Trapiche. Eles praticam uma série de assaltos e são constantemente perseguidos pela polícia. Um dia, Professor conhece Dora e seu irmão Zé Fuinha e os leva até o Trapiche, o que desencadeia a excitação dos demais garotos, que não estão acostumados à presença de uma mulher no local. Aos poucos, nasce o afeto entre o líder do grupo e a jovem.", "assets/imgs/capitaes2.jpg"),));
                  setState(() {});
                },
              ),

              GestureDetector(
                child: laranja,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Livro("Meu pé de laraja lima", "Zezé tem seis anos de idade e é filho de um casal muito pobre. Ele é uma criança triste e sem brinquedos que, certo dia, numa de suas brincadeiras no quintal, acaba fazendo de um pé de laranja lima o seu maior confidente.", 'assets/imgs/meupe.webp'),));
                  setState(() {});
                },
              ),
            ],),

            SizedBox(height: 40),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                child: quarto,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Livro("Quarto do despejo", "A obra “Quarto de Despejo: diário de uma favelada”, mostra a escritora buscando estratégias de sobrevivência, contando o dinheiro quase todos os dias no intuito de comprar alimentos. Quando conseguia comprar arroz, feijão e carne, conforme conta, era um dia de festa, via a felicidade estampada no rosto de cada filho.", 'assets/imgs/quarto2.jpeg'),));
                  setState(() {});
                },
              ),

              GestureDetector(
                child: helena,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Livro("Helena", "Helena, obra de Machado de Assis, narra a história de Helena, que, considerada uma filha abastarda, é reconhecida e acolhida pela família de seu pai, quando este falece. O livro inicia seu enredo exatamente nesse momento, quando o Conselheiro Vale, pai de Helena, tem sua morte ocasionada por apoplexia, após sua sesta.", 'assets/imgs/helena2.png'),));
                  setState(() {});
                },
              ),
            ],)
          ],
        ),
      ),
    );
  }
}