import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class topico extends StatelessWidget {
  const topico(this.textinho, {super.key});

  final String textinho;

  @override
  Widget build(BuildContext context) {
    return Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/8968/8968525.png"),
                    ),
                    Text(textinho)
                  ],
                );
  }
}
