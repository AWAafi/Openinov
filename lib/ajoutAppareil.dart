import 'package:flutter/material.dart';

class AjouterAppareilScreen extends StatefulWidget {
  @override
  _AjouterAppareilScreenState createState() => _AjouterAppareilScreenState();
}

class _AjouterAppareilScreenState extends State<AjouterAppareilScreen> {
  final TextEditingController watchIdController = TextEditingController();
  final TextEditingController pseudoController = TextEditingController();
  String selectedRole = 'Je suis maman'; // Valeur initiale

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 60),
            Text(
              "Ajouter un appareil",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 20),
            Image.asset('images/watch.jpg', height: 100),
            SizedBox(height: 20),
            TextField(
              controller: watchIdController,
              decoration: InputDecoration(
                labelText: 'Entrer le numéro de la montre',
                prefixIcon: Icon(Icons.watch),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: pseudoController,
              decoration: InputDecoration(
                labelText: 'Pseudo',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: selectedRole,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.family_restroom),
              ),
              items: ['Je suis maman', 'Je suis papa', 'Autre'].map((role) {
                return DropdownMenuItem(value: role, child: Text(role));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedRole = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ajouter l'appareil : gérer la validation ou envoi des données ici
                final watchId = watchIdController.text.trim();
                final pseudo = pseudoController.text.trim();
                if (watchId.isEmpty || pseudo.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Veuillez remplir tous les champs')),
                  );
                  return;
                }
                // Exemple de retour à l’écran précédent après ajout
                Navigator.pop(context, {
                  'watchId': watchId,
                  'pseudo': pseudo,
                  'role': selectedRole,
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown[300]),
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
