import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          WebsafeSvg.asset(
            "assets/newBg.svg",
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    "How Much Do You Know About The Premier League?",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const Divider(color: Colors.transparent,),
                  const Text(
                    "Enter Your Name Below:",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  const Divider(height: 20, color: Colors.transparent,),
                  const TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xFFAB47BC),
                        filled: true,
                        hintText: "Full Name",
                        hintStyle: TextStyle(fontSize: 18.0),
                        border: OutlineInputBorder(
                          //borderSide: BorderSide(Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)))),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => Get.to(const QuizScreen()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Lets Go...",
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
