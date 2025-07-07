import 'package:flutter/material.dart';

class SosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Text("Alerte SOS de Amy",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.brown),
            ),
            SizedBox(height: 10),
            Text("Une alerte a \u00e9t\u00e9 d\u00e9clench\u00e9e \u00e0 17h30 depuis la montre"),
            SizedBox(height: 20),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                image: DecorationImage(
                  image: AssetImage('images/map.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/amy.jpg'),
                  radius: 30,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              child: Text("Appelez maintenant"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text("Suivi en direct"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text("Avertir un contact"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cl\u00f4turer l'alerte"),
            ),
          ],
        ),
      ),
    );
  }
}