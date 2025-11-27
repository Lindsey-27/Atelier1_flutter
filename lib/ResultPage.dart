import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  final String name;
  final String email;
  final String telephone;

  const Resultpage({
    super.key,
    required this.name,
    required this.email,
    required this.telephone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Resultat")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/plage.png'),
            ),
            const SizedBox(height: 16),
            Text("Nom: $name", style: const TextStyle(fontSize: 18)),
            Text("Email: $email", style: const TextStyle(fontSize: 18)),
            Text("Téléphone: $telephone", style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
