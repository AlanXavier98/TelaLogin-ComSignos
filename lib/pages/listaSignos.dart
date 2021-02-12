import 'package:flutter/material.dart';
import 'package:Login/utils/cardSignos.dart';
import '../data/dadosSignos.dart' as colecao_signos;
import 'login.dart';

class ListaSignos extends StatelessWidget {
  var signos = colecao_signos.signos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Características dos Signos"),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Signos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFF58524),
                      Color(0xFFF9237F),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Adicionar',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Alterar',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                height: 40,
                child: FlatButton(
                  child: Text(
                    "Sair",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        body: GridView.count(
          padding: EdgeInsets.only(top: 20),
          crossAxisCount: 2,
          children: List.generate(
              signos.length, (index) => CardSignos(signos[index])),
        ));
  }
}
