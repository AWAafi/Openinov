import 'package:flutter/material.dart';

class HistoriqueScreen extends StatelessWidget {
  final List<Map<String, String>> historiques = [
    {"heure": "08:00", "lieu": "Chatelet", "adresse": "6 rue de s\u00e9vign\u00e9, chatelet"},
    {"heure": "08:10", "lieu": "Auber", "adresse": "6 rue de s\u00e9vign\u00e9, Auber"},
    {"heure": "08:20", "lieu": "Charles de gaules", "adresse": "6 rue de s\u00e9vign\u00e9, Charles"},
    {"heure": "08:40", "lieu": "La Defense", "adresse": "6 rue de s\u00e9vign\u00e9, La Defense"},
    {"heure": "10:00", "lieu": "Courbevoie", "adresse": "6 rue de s\u00e9vign\u00e9, Charles"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 60),
            Text("Historique",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.brown)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_ios),
                SizedBox(width: 8),
                Text("26 Juin, 2025"),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: historiques.length,
                itemBuilder: (context, index) {
                  final h = historiques[index];
                  return ListTile(
                    title: Text("${h['heure']} - ${h['lieu']}", style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(h['adresse']!),
                    trailing: Icon(Icons.map),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Revenir \u00e0 aujourd'hui"),
            )
          ],
        ),
      ),
    );
  }
}