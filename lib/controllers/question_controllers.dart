import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/screens/score.dart';


class QuestionControllers extends GetxController
    with GetSingleTickerProviderStateMixin {

  // Data members for the Timer and the other animations on the Quiz Screen
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => _animation;

  // Data members for switching Questions on the Quiz Screen
  late PageController _pageController;
  PageController get pageController => _pageController;

  // Question List
  final List<Question> _questions = sampleData
      .map((question) => Question(
          id: question["id"],
          question: question["question"],
          options: question["options"],
          answer: question["answer_index"]))
      .toList();

  List<Question> get question => _questions;

  late bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  late int _correctAnswer;
  int get correctAnswer => _correctAnswer;

  late int _selectedAnswer;
  int get selectedAnswer => _selectedAnswer;

  late final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  late int _numOfCorrectAnswers = 0;
  int get numOfCorrectAnswers => _numOfCorrectAnswers;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: const Duration(seconds: 15), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAnswer = question.answer;
    _selectedAnswer = selectedIndex;

    if (_correctAnswer == selectedIndex) {
      _numOfCorrectAnswers++;
      Future.delayed(const Duration(seconds: 1), () {
        nextQuestion();
      });
    } else {
      Future.delayed(const Duration(seconds: 3), () {
        nextQuestion();
      });
    }
    _animationController.stop();
    update();

  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);

      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(const ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
