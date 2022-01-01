import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controllers.dart';

import '../../constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //For the Border Around the Bar
      width: double.infinity,
      height: 40.0,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white30),
          borderRadius: BorderRadius.circular(17)),
      child: GetBuilder<QuestionControllers>(
          init: QuestionControllers(),
          builder: (controller) {
            return Stack(
              children: [
                LayoutBuilder(
                  //For the Gradient inside the Bar
                    builder: (context, constraints) => Container(
                          width:
                              constraints.maxWidth * controller.animation.value,
                          decoration: BoxDecoration(
                              gradient: kPrimaryGradient,
                              borderRadius: BorderRadius.circular(15)),
                        )),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "${(controller.animation.value * 15).round()} secs",
                            style: const TextStyle(color: Colors.black)),
                        const Icon(Icons.timer)
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
