import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valorUsuario = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[
            Slider(
              value: _valorUsuario,
              min: 0,
              max: 10,
              divisions: 10,
              activeColor: Colors.red,
              inactiveColor: Colors.deepPurple,
              label: _valorUsuario.toString(),
              onChanged: (double novoValor) {
                setState(() {
                  _valorUsuario = novoValor;
                });
              },
            ),
            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                print("Valor Definido: " + _valorUsuario.toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}
