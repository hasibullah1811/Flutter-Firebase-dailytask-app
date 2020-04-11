import 'package:daily_task/config/config.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneSignInScreen extends StatefulWidget {
  @override
  _PhoneSignInScreenState createState() => _PhoneSignInScreenState();
}

class _PhoneSignInScreenState extends State<PhoneSignInScreen> {
  PhoneNumber _phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in using Phone Number"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(12.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              InternationalPhoneNumberInput(
                onInputChanged: (phoneNumbertxt) {
                  _phoneNumber = phoneNumbertxt;
                },
                inputBorder: OutlineInputBorder(),
                initialCountry2LetterCode: "BD",
              ),
              InkWell(
              onTap: () {
               // _signin();
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      primaryColor,
                      secondaryColor,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Center(
                    child: Text(
                  "Send OTP",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
