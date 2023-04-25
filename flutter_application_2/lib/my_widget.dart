import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  const MyWidget(
    this.nome, this.cor, this.size, this.padding, {super.key} );

  final String nome;
  final Color cor;
  final double size;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: cor,
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Text(nome, style: TextStyle(color: Colors.white, fontSize: size)),
      ),
    );
  }
}