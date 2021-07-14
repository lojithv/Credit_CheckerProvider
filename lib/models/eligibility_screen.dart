import 'package:flutter/material.dart';

class EligibilityScreenProvider extends ChangeNotifier{
  String _eligibilityMessage = "";
  bool _isEligible = false;

  String get eligibilityMessage => _eligibilityMessage;
  bool get isEligible => _isEligible;

  void checkEligibility(int age){
     if (age == 0){
      _eligibilityMessage = "Enter valid age";
      _isEligible = false;
     }
     else if (age > 18){
        _eligibilityMessage = "You can Apply";
        _isEligible = true;
     } else {
       _eligibilityMessage = "You cannot Apply";
       _isEligible = false;
     }

     notifyListeners();
  }
}