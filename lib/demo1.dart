import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/eligibility_screen.dart';

class EligibilityScreen extends StatelessWidget {

  final ageController = TextEditingController();

  int age = 0;

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
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: provider.isEligible == true ? Colors.green : Colors.orange
                                ),
                              ),
                              SizedBox(height: 50),
                              TextFormField(
                                controller: ageController,
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
                                      age = int.parse(ageController.text.trim());
                                      provider.checkEligibility(age);
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