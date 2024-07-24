import 'package:flutter/material.dart';
import 'package:odev2/sayfaA.dart';
import 'package:odev2/sayfaX.dart';

void main() => runApp(Anasayfa());

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/sayfaX': (context) => sayfaX(),
        '/sayfaA': (context) => sayfaA(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('GİT > X'),
              onPressed: () {
                Navigator.pushNamed(context, '/sayfaX');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('GİT > A'),
              onPressed: () {
                Navigator.pushNamed(context, '/sayfaA');
              },
            ),
          ],
        ),
      ),
    );
  }
}