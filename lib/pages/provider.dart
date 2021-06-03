import 'package:flutter/material.dart';

class QuizProvider with ChangeNotifier {
  bool _isCorrect = true;

  bool get isCorrect => _isCorrect;

  set isCorrect(bool newValue) {
    _isCorrect = newValue;
    notifyListeners();
  }

  get color => _isCorrect ? Colors.green : Colors.red;
}
