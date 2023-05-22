// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre Nós'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/D4D03AQGvP02bKypp8w/profile-displayphoto-shrink_200_200/0/1679830445512?e=1690416000&v=beta&t=6Lxs4h3xC8kpRA4uH5B0iST0RLMTGCi_2zsEG9AyT8Y'),
                ),
                SizedBox(width: 16),
                CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/D4D03AQErRk8oT8Ri2A/profile-displayphoto-shrink_200_200/0/1670441232205?e=1690416000&v=beta&t=6ZoR440m3_t3UHHn42Bz__VVXrKzAHKnvNxN6SHdcHo'),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text('Telefone: +55 123456789'),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text('E-mail: info@gmail.com'),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Nós somos Samuel e Davie, estudantes do Colégio Técnico de Limeira(COTIL) e esta é uma atividade da disciplina de DDM.',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
