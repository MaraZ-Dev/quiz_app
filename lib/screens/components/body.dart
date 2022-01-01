import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controllers.dart';
import 'package:quiz_app/screens/components/progress_bar.dart';
import 'package:quiz_app/screens/components/question_asked.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllers _questionControllers = Get.put(QuestionControllers());
    return Stack(
      fit: StackFit.expand,
      children: [
        WebsafeSvg.asset("assets/newBg.svg", fit: BoxFit.cover),
        SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ProgressBar(), //Timer
            ),
            const Divider(),
            Padding(
              // Question Label
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Obx(() => Text.rich(TextSpan(
                text: "Question ${_questionControllers.questionNumber.value}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kSecondaryColor),
                children: [
                  TextSpan(
                      text: "/${_questionControllers.question.length}",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: kSecondaryColor))
                ],
              )),)
            ),
            const Divider(thickness: 2.0),
            const SizedBox(height: kDefaultPadding),
            Expanded(
              // Question Asked, The Option Method is insde the Question Dart File
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: 30.0),
                padding: const EdgeInsets.all(kDefaultPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: PageView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _questionControllers.pageController,
                    onPageChanged: _questionControllers.updateTheQnNum,
                    itemCount: _questionControllers.question.length,
                    itemBuilder: (context, index) => QuestionAsked(
                        question: _questionControllers.question[index])),
              ),
            )
          ]),
        )
      ],
    );
  }
}
