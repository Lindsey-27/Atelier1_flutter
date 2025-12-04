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
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/plage.png'),
              ),
              const SizedBox(height: 16),
              Text(
                "Voici vos informations saisies :\n\n"
                "Nom: $name\n"
                "Email: $email\n"
                "Téléphone: $telephone",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
