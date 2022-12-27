// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:quis_app/model/quiz_model.dart';
import 'package:quis_app/widgets/quiz%20_btn.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List jooptor = <bool>[];
  List tuuraJoop = <bool>[];
  List kataJoop = <bool>[];
  void teksher(bool value) {
    if (quizzes[index].answer == value) {
      jooptor.add(true);
      tuuraJoop.add(true);
    } else {
      jooptor.add(false);
      kataJoop.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Сиз бул тесттен ...'),
              content: Text(
                'Туура жооптор: ${tuuraJoop.length} Ката жооптор: ${kataJoop.length}',
              ),
              actions: [
                TextButton(
                  onPressed: (() {
                    setState(() {
                      index = 0;
                      jooptor.clear();
                      tuuraJoop.clear();
                      kataJoop.clear();
                      Navigator.pop(context);
                    });
                  }),
                  child: const Text('Артка кайт'),
                )
              ],
            );
          },
        );
      } else {
        index++;
      }
    });
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff211c1c),
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              child: Text(
                textAlign: TextAlign.center,
                quizzes[index].question,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            QuizBtnBu(
              tuuraBtnBu: true,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(height: 30),
            QuizBtnBu(
              tuuraBtnBu: false,
              baskanda: (maani) {
                teksher(maani);
              },
            ),
            const SizedBox(height: 100),
            // Row(
            //   children: const [
            //     AnswerBtn(tuuraIconBu: true),
            //     AnswerBtn(tuuraIconBu: false),
            //   ],
            // ),
            // SizedBox(
            //   height: 40,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: jooptor.length,
            //     itemBuilder: (context, i) {
            //       return jooptor[i]
            //           ? const AnswerBtn(tuuraIconBu: true)
            //           : const AnswerBtn(tuuraIconBu: false);
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        'ТАПШЫРМА-7',
        style: TextStyle(
          color: Color(0xff291010),
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
