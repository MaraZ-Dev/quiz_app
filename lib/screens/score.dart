import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controllers.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllers _qnController = Get.put(QuestionControllers());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          WebsafeSvg.asset(
            "assets/newBg.svg",
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              const Spacer(),
              Text(
                "Your Score is",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kSecondaryColor),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                "${_qnController.numOfCorrectAnswers}/${_qnController.question.length}",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const Spacer(
                flex: 3,
              )
            ],
          )
        ],
      ),
    );
  }
}
