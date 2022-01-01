import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controllers.dart';

import '../../constants.dart';

class Options extends StatelessWidget {
  const Options({
    Key? key, required this.text, required this.index, required this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionControllers>(
      init: QuestionControllers(),
      builder: (qnController) {
        Color getTheRightColor() {
          if (qnController.isAnswered) {
            if (index == qnController.correctAnswer) {
              //print("Hey");
              return Colors.green;
            } else if (index == qnController.selectedAnswer &&
                qnController.selectedAnswer != qnController.correctAnswer) {
              //print("Mandem");
              return Colors.red;
            }
          }
          return Colors.grey;
        }

        IconData getTheRightIcon() {
          return getTheRightColor() == Colors.red ? Icons.close : Icons.done;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: const EdgeInsets.only(top: kDefaultPadding),
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${index + 1}.  $text",
                    style: TextStyle(
                        color: getTheRightColor(), fontSize: 16)),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: getTheRightColor() == kGrayColor ? Colors.transparent : getTheRightColor(),
                      border: Border.all(color: getTheRightColor()),
                      borderRadius: BorderRadius.circular(50)),
                  child: getTheRightColor() == kGrayColor ? null: Icon(getTheRightIcon(), size: 16,),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
