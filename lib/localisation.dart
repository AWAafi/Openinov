import 'package:flutter/material.dart';

class LocalisationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 60),
          Text(
            "Historique de localisation",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.brown),
          ),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/amy.jpg'),
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text("AMY\nIl y a 10 minutes\n6 rue de S\u00e9vign\u00e9, Ch\u00e2telet",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sos');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown[300]),
                child: Text('SOS'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/historique');
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown[300]),
                child: Text('Historique'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}