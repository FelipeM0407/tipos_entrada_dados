import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _estaSelecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do mundo"),
              activeColor: Colors.red,
              selected: _estaSelecionado,
              value: _estaSelecionado,
              onChanged: (bool valor) {
                setState(() {
                  _estaSelecionado = valor;
                });
              },
            ),

            // Text("Comida Brasileira"),
            // Checkbox(
            //   value: _estaSelecionado,
            //   onChanged: (bool valor) {
            //     setState(() {
            //       _estaSelecionado = valor;
            //     });
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
