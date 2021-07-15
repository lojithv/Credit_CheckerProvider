import 'package:flutter/material.dart';

class EligibilityScreenProvider extends ChangeNotifier{
  String _eligibilityMessage = "";
  bool _isEligible = false;

  String get eligibilityMessage => _eligibilityMessage;

  void checkEligibility(String salary){
    if (salary.isNotEmpty) {
      int amount = int.parse(salary);

      if (amount >= 100000) {
        _eligibilityMessage = "Loan amount = 5, 000, 000 LKR";
      }
      else if (amount >=  60000) {
        _eligibilityMessage = "Loan amount = 2, 500, 000 LKR";
      }
      else if (amount >= 25000) {
        _eligibilityMessage = " Loan amount = 1, 000, 000 LKR";
      }
      else {
        _eligibilityMessage = "Cannot apply for loans";
      }
    }
    else{
      _eligibilityMessage = "Please Enter your Salary";
    }

     notifyListeners();
  }
}