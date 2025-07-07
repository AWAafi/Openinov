import 'package:flutter/material.dart';

class ConnexionScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200], // 👈 même fond que SplashScreen
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 60),
            Image.asset('images/logoopen.jpg', height: 100), // 👈 le logo
            SizedBox(height: 20),
            Text(
              "CONNEXION",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // 👈 texte blanc pour contraster avec fond
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Colors.white, // 👈 fond blanc pour les champs
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (emailController.text.isEmpty || passwordController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Veuillez remplir tous les champs')),
                  );
                  return;
                }

                Navigator.pushReplacementNamed(context, '/accueil');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[800], // bouton assorti au thème
              ),
              child: Text('Connexion'),
            ),
          ],
        ),
      ),
    );
  }
}
