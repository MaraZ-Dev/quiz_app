import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controllers.dart';
import 'package:quiz_app/models/questions.dart';

import 'options.dart';

class QuestionAsked extends StatelessWidget {
  const QuestionAsked({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    final QuestionControllers _controller = Get.put(QuestionControllers());
    return Column(
      children: [
        // The Question
        Text(question.question,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.black)),
        // The Options
        ...List.generate(
            question.options.length,
            (index) => Options(
                  text: question.options[index],
                  index: index,
                  press: () => _controller.checkAns(question, index),
                ))
      ],
    );
  }
}
