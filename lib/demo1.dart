import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/eligibility_screen.dart';

class EligibilityScreen extends StatelessWidget {

  final salaryController = TextEditingController();

  int salary = 0;

  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider<EligibilityScreenProvider>(
        create: (context) => EligibilityScreenProvider(),
        child: Builder(builder: (context) {
          return Scaffold(
            body: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                    child: Consumer<EligibilityScreenProvider>(
                        builder: (context, provider, child) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 50),
                              TextFormField(
                                controller: salaryController,
                                decoration: InputDecoration(
                                  hintText: 'Enter your Salary',
                                ),
                              ),
                              SizedBox(height: 50),
                              Container(
                                  width: double.infinity,
                                  child: FlatButton(
                                    child: Text("Check"),
                                    color: Colors.black,
                                    textColor: Colors.white,
                                    onPressed: () {
                                      salary = int.parse(salaryController.text.trim());
                                      provider.checkEligibility(salary);
                                    },)
                              ),
                              SizedBox(height: 50),
                              Text(provider.eligibilityMessage)
                            ],
                          );
                        }
                    )
                ),
              ),
            ),);
        }),
      );
  }
}