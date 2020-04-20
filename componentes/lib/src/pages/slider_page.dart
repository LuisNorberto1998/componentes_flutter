import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorDelSlider = 100.0;
  bool _bloquarCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: 'Tamaño de la imagen',
        value: _valorDelSlider,
        min: 10,
        max: 400,
        onChanged: (_bloquarCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorDelSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          "https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/s960x960/93713240_1583279151826804_6717638621165256704_o.jpg?_nc_cat=102&_nc_sid=dd7718&_nc_eui2=AeFAN0INnUp4kION01gxbsa8hgVwPyCH6QuGBXA_IIfpC8DaI_tuWHKLtZVmiWid3vhdWmjN85BHyxIpSdbriK4P&_nc_ohc=GT3XcoTYmYMAX-U7-2o&_nc_ht=scontent-qro1-1.xx&_nc_tp=7&oh=dd08bebe884f35ae925690ecf9ce621f&oe=5EC41504"),
      width: _valorDelSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    /*return Checkbox(
                    value: _bloquarCheck,
                    onChanged: (valor) {
                      setState(() {
                        _bloquarCheck = valor;
                      });
                    });*/

    return CheckboxListTile(
        title: Text('Bloquear slider'),
        value: _bloquarCheck,
        onChanged: (valor) {
          setState(() {
            _bloquarCheck = valor;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear slider'),
        value: _bloquarCheck,
        onChanged: (valor) {
          setState(() {
            _bloquarCheck = valor;
          });
        });
  }
}
