import 'package:flutter/material.dart';
import 'package:edumate/core.dart';

class DetailUjiKemampuanController extends State<DetailUjiKemampuanView> {
  static late DetailUjiKemampuanController instance;
  late DetailUjiKemampuanView view;

  int index = 0;
  int score = 0;

  List<QuestionModel> questions = [
    QuestionModel(
      question: markBold(
          "Yang merupakan bangun trapesium berikut ini adalah . . .",
          "trapesium"),
      progressColor: const Color(0xffCBCEFF),
      bgColor: const Color(0xff9BA0FF),
      answers: [
        "assets/images/uji_kemampuan/detail/kotak.svg",
        "assets/images/uji_kemampuan/detail/trapesium.svg",
        "assets/images/uji_kemampuan/detail/jajar_genjang.svg",
        "assets/images/uji_kemampuan/detail/belah_ketupat.svg",
      ],
      correctAnswer: "assets/images/uji_kemampuan/detail/trapesium.svg",
    ),
    QuestionModel(
      question: markBold(
        "Sebuah kolam berenang yang berbentuk persegi panjang memiliki panjang kolam 5 meter dan lebar kolam 3 meter. Berapakah luas kolam berenang tersebut . . . m",
        "persegi panjang",
      ),
      progressColor: const Color(0xffCFFFFF),
      bgColor: const Color(0xff67CFCF),
      answers: [
        "25",
        "10",
        "30",
        "15",
      ],
      correctAnswer: "15",
    ),
    QuestionModel(
      question: markBold(
        "Kamar Rina berbentuk persegi dengan panjang setiap sisi 7 meter. Berapakah keliling kamar Rina . . . m",
        "persegi",
      ),
      progressColor: const Color(0xffFFE7C3),
      bgColor: const Color(0xffFDBB59),
      answers: [
        "16",
        "21",
        "28",
        "32",
      ],
      correctAnswer: "28",
    ),
    QuestionModel(
      question: markBold(
        "Tentukan keliling bangun disamping . . . cm",
        "",
      ),
      imageLeft: "assets/images/uji_kemampuan/detail/soal_4.svg",
      progressColor: const Color(0xffFFD9E9),
      bgColor: const Color(0xffFF8EBD),
      answers: [
        "56",
        "64",
        "72",
        "48",
      ],
      correctAnswer: "56",
    ),
    QuestionModel(
      question: markBold(
        "Berikut ini yang bukan termasuk bangun datar adalah . . .",
        "",
      ),
      progressColor: const Color(0xffBED9FF),
      bgColor: const Color(0xff6895D2),
      answers: [
        "assets/images/uji_kemampuan/detail/layang_layang.svg",
        "assets/images/uji_kemampuan/detail/segi_tiga.svg",
        "assets/images/uji_kemampuan/detail/kubus.svg",
        "assets/images/uji_kemampuan/detail/persegi_panjang.svg",
      ],
      correctAnswer: "assets/images/uji_kemampuan/detail/kubus.svg",
    ),
    QuestionModel(
      question: markBold(
        "Manakah yang termasuk bentuk jajar genjang . . .",
        "jajar genjang",
      ),
      progressColor: const Color(0xffE8FFD6),
      bgColor: const Color(0xffC3FF93),
      answers: [
        "assets/images/uji_kemampuan/detail/kotak.svg",
        "assets/images/uji_kemampuan/detail/trapesium.svg",
        "assets/images/uji_kemampuan/detail/jajar_genjang.svg",
        "assets/images/uji_kemampuan/detail/belah_ketupat.svg",
      ],
      correctAnswer: "assets/images/uji_kemampuan/detail/jajar_genjang.svg",
    ),
    QuestionModel(
      question: markBold(
        "Berikut ini merupakan rumus keliling persegi adalah . . .",
        "persegi",
      ),
      progressColor: const Color(0xffCFFFFF),
      bgColor: const Color(0xff67CFCF),
      answers: [
        "4 x s",
        "s x s",
        "2x(p + l)",
        "p x l",
      ],
      correctAnswer: "4 x s",
    ),
    QuestionModel(
      question: markBold(
        "Alex bermain di lapangan yang berbentuk persegi panjang dengan panjang 12 m dan lebar 5 m. Maka luas lapangan tersebut adalah . . . m",
        "persegi panjang",
      ),
      progressColor: const Color(0xffFFE7C3),
      bgColor: const Color(0xffFDBB59),
      answers: [
        "70",
        "80",
        "60",
        "50",
      ],
      correctAnswer: "60",
    ),
    QuestionModel(
      question: markBold(
        "Tentukan keliling bangun di atas . . . cm",
        "",
      ),
      imageTop: "assets/images/uji_kemampuan/detail/soal_9.svg",
      progressColor: const Color(0xffFFD9E9),
      bgColor: const Color(0xffFF8EBD),
      answers: [
        "32",
        "36",
        "30",
        "38",
      ],
      correctAnswer: "38",
    ),
    QuestionModel(
      question: markBold(
        "Berikut ini yang termasuk bangun datar adalah . . .",
        "",
      ),
      progressColor: const Color(0xffFFD9E9),
      bgColor: const Color(0xffFF8EBD),
      answers: [
        "assets/images/uji_kemampuan/detail/prisma_segitiga.svg",
        "assets/images/uji_kemampuan/detail/balok.svg",
        "assets/images/uji_kemampuan/detail/kubus.svg",
        "assets/images/uji_kemampuan/detail/persegi_panjang.svg",
      ],
      correctAnswer: "assets/images/uji_kemampuan/detail/persegi_panjang.svg",
    ),
  ];

  void checkAnswer(int indexAnswer) async {
    if (questions[index].answers[indexAnswer] ==
        questions[index].correctAnswer) {
      score = score + 10;
    }
    if (index + 1 == questions.length) {
      Get.offAll(
        HasilUjiKemampuanView(
          score: score.toString(),
        ),
      );
      return;
    } else {}

    index++;
    update();
  }

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}

class QuestionModel {
  final String question;
  final String? imageLeft;
  final String? imageTop;
  final List<String> answers;
  final String correctAnswer;
  final Color bgColor;
  final Color progressColor;

  QuestionModel({
    required this.question,
    this.imageLeft,
    this.imageTop,
    required this.answers,
    required this.correctAnswer,
    required this.bgColor,
    required this.progressColor,
  });
}
