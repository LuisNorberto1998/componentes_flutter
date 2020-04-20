import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  'https://dam.smashmexico.com.mx/wp-content/uploads/2020/01/deadpool-dolly-parton-challenge-redes-sociales-cover.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          fadeInDuration: Duration(milliseconds: 200),
            placeholder: AssetImage('assets/original.gif'),
            image: NetworkImage(
                'https://dam.smashmexico.com.mx/wp-content/uploads/2020/01/deadpool-dolly-parton-challenge-redes-sociales-cover.jpg')),
      ),
    );
  }
}
