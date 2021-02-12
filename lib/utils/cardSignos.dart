import 'package:flutter/material.dart';
import 'package:Login/pages/detalhesSigno.dart';

class CardSignos extends StatelessWidget {
  String _nome;
  String _imagem;
  Map _dataSigno;

  CardSignos(Map signo) {
    this._nome = signo['Nome'];
    this._imagem = signo['Imagem'];
    this._dataSigno = signo;
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("$_imagem", width: 90),
          SizedBox(height: 10),
          Text("$_nome",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(height: 10),
        ],
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetalhesSigno(this._dataSigno)));
      },
    );
  }
}
