import 'package:flutter/material.dart';
import 'package:odev2/anasayfa.dart';

void main() => runApp(sayfaY());

class sayfaY extends StatelessWidget {
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
        title: Text('SAYFA Y'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Geri'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Anasayfa()),
            );
          },
        ),
      ),
    );
  }
}
