import 'package:welog/login.dart';
import 'package:welog/otp_screen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Forget password'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200, right: 145),
              child: Text(
                'Reset password',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Enter your email you used to create account and send instruction for testing password',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'User Name',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 50,
                width: 450,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ButtonStyle(),
                  child: const Text('Instructor'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Otp_Screen()));
                  },
                )),
          ],
        ));
  }
}
