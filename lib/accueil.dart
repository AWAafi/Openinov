import 'package:flutter/material.dart';

class AccueilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200], // ✅ fond commun
      body: SafeArea(
        child: Column(
          children: [
            // ✅ logo commun
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Image.asset(
                  'images/logoopen.jpg',
                  height: 100,
                ),
              ),
            ),
            SizedBox(height: 20),

            // ✅ zone de boutons
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ListView(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/ajoutAppareil');
                      },
                      child: Text("Aller à l'ajout d'appareil"),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/localisation');
                      },
                      child: Text("Voir la localisation"),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sos');
                      },
                      child: Text("Lancer une alerte SOS"),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/historique');
                      },
                      child: Text("Voir l'historique"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
