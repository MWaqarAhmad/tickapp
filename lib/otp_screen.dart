import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp_Screen extends StatefulWidget {

  const Otp_Screen({Key? key}) : super(key: key);

  @override
  State<Otp_Screen> createState() => _Otp_ScreenState();
}

class _Otp_ScreenState extends State<Otp_Screen> {
  TextEditingController pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Otp screen')),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 200,left: 20,right: 20),
          child: Text(
            'Enter 4 digit code',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: Text(
              'Enter your 4 digit code we send on your email in order to reset password',textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),

        SizedBox(
          height: 40.0,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 20),
          child: TextField(
            controller: pinController,

            decoration:  InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),),
              labelText: 'Enter pin',

            ),
            keyboardType: TextInputType.phone,
          ),

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Not Received?'),
            TextButton(
              child: const Text(
                'Send again',
                style: TextStyle(fontSize: 20,color: Colors.green),
              ),
              onPressed: () {

              },
            )
          ],
        ),



      ]),
    );
  }
}
