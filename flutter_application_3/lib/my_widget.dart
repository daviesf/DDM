import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  final String nome;
  final Color cor;
  final double size;
  const MyWidget(this.nome, this.cor, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: cor,
      ),
      child: Text(nome, style: TextStyle(fontSize: size)),
      );
  }
}