import 'dart:math';
class CalculatorBrain{

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double _bmi;

  String calculatorBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
      return "OverWeight";
    } else if(_bmi > 18){
      return "Normal";
    }else {
      return "UnderWeight";
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if(_bmi > 18){
      return "You have a normal body Weight. Good Job!";
    }else {
      return "You have lower than normal body Weight. you can eat a bit more.";
    }
  }

}