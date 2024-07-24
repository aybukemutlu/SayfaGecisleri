import 'package:flutter/material.dart';
import 'package:odev2/sayfaB.dart';

void main() => runApp(sayfaA());

class sayfaA extends StatelessWidget {
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
        title: Text('SAYFA A'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('GİT > B'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => sayfaB()),
            );
          },
        ),
      ),
    );
  }
}
