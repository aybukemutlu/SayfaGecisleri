import 'package:flutter/material.dart';
import 'package:odev2/sayfaB.dart';
import 'package:odev2/sayfaY.dart';

void main() => runApp(sayfaB());

class sayfaB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SAYFA B'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('GİT > Y'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => sayfaY()),
            );
          },
        ),
      ),
    );
  }
}
