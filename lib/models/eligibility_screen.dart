import 'package:flutter/material.dart';

class EligibilityScreenProvider extends ChangeNotifier{
  String _eligibilityMessage = "";
  bool _isEligible = false;

  String get eligibilityMessage => _eligibilityMessage;

  void checkEligibility(int salary){
     if (salary >= 120000){
      _eligibilityMessage = "Credit balance : 170, 000 LKR";
     }
     else if (salary >= 80000){
       _eligibilityMessage = "Credit balance : 130, 000 LKR";
     }
     else if (salary >= 50000){
       _eligibilityMessage = "Credit balance : 100, 000 LKR";
     }
     else {
       _eligibilityMessage = "No Credit Balance";
     }

     notifyListeners();
  }
}