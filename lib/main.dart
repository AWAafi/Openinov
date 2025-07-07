import 'package:flutter/material.dart';
import 'dart:async';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logoopen.jpg', height: 100),
            SizedBox(height: 20),
            Text(
              "Bienvenue dans Together Everywhere",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class AccueilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Accueil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ajoutAppareil');
              },
              child: Text("Aller à l'ajout d'appareil"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/localisation');
              },
              child: Text("Voir la localisation"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sos');
              },
              child: Text("Lancer une alerte SOS"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/historique');
              },
              child: Text("Voir l'historique"),
            ),
          ],
        ),
      ),
    );
  }
}
