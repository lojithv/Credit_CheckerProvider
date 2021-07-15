import 'package:flutter/material.dart';

class EligibilityScreenProvider extends ChangeNotifier{
  String _eligibilityMessage = "";
  bool _isEligible = false;

  String get eligibilityMessage => _eligibilityMessage;

  void checkEligibility(String salary){
    if (salary.isNotEmpty) {
      int amount = int.parse(salary);
      if (amount >= 120000) {
        _eligibilityMessage = "Credit balance : 170, 000 LKR";
      }
      else if (amount >= 80000) {
        _eligibilityMessage = "Credit balance : 130, 000 LKR";
      }
      else if (amount >= 50000) {
        _eligibilityMessage = "Credit balance : 100, 000 LKR";
      }
      else {
        _eligibilityMessage = "No Credit Balance";
      }
    }
    else{
      _eligibilityMessage = "Please Enter your Salary";
    }

     notifyListeners();
  }
}