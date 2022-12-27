import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  const AnswerBtn({
    Key? key,
    required this.tuuraIconBu,
  }) : super(key: key);
  final bool tuuraIconBu;

  @override
  Widget build(BuildContext context) {
    return Icon(
      tuuraIconBu ? Icons.check : Icons.close,
      color: tuuraIconBu ? Colors.green : Colors.red,
    );
  }
}
