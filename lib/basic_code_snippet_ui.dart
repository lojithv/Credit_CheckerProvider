import 'package:flutter/material.dart';

class EligibilityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50),
                  TextFormField(
                    controller: null,
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
                        onPressed: () {},
                      )),
                  SizedBox(height: 50),
                  Text("Message goes here")
                ],
              )))),
    );
  }
}
