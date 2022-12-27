// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class QuizBtnBu extends StatelessWidget {
  QuizBtnBu({
    Key? key,
    required this.tuuraBtnBu,
    required this.baskanda,
  }) : super(key: key);
  final bool tuuraBtnBu;

  void Function(bool) baskanda;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        baskanda(tuuraBtnBu);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          // color: const Color(0xff6b685d),
          color: tuuraBtnBu ? const Color(0xff4CB050) : const Color(0xffEF443A),
        ),
        width: double.infinity,
        height: 70,
        child: Center(
          child: Text(
            tuuraBtnBu ? 'Ооба ' : 'Жок',
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
