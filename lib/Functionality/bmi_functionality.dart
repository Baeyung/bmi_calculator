import 'dart:math';

class BMIFunctionality {
  final double weight;
  final double height;
  double _bmi = 0;
  BMIFunctionality({required this.height, required this.weight});

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String returnStatus() {
    if (_bmi >= 30) {
      return 'obesity';
    } else if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi >= 18.5) {
      return 'healthy';
    } else {
      return 'underweight';
    }
  }

  String returnComment() {
    if (_bmi >= 30) {
      return 'Bruh you need to pray and workout';
    } else if (_bmi >= 25) {
      return 'Bruh eat a little less or youll suffer';
    } else if (_bmi >= 18.5) {
      return 'Perfect Bmi, these are the goals';
    } else {
      return 'Bruh, you need to eat more and stop getting bullied';
    }
  }
}
