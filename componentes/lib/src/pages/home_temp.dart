import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components temp"),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((cualquiernombrexd) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(cualquiernombrexd + "!"),
            subtitle: Text("Hello xd"),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }
}
