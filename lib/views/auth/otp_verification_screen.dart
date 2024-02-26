import 'package:auction_app/views/home_page/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 38.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Verification',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/otp_verification_icon.png'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'We have sent a verification code to',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
              ),
              const Text(
                '+251912345678',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Enter code here',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10),
                child: OTPTextField(
                  onChanged: (pin) {
                    debugPrint('onCompleted: $pin ');
                    try {
                      debugPrint('verification successful');
                    } catch (ex) {
                      debugPrint(ex.toString());
                    }
                  },
                  outlineBorderRadius: 10,
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 50,
                  style: const TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceEvenly,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {},
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: RichText(
                          text: TextSpan(
                              text: "Didn't get the code? ",
                              style: const TextStyle(color: Colors.grey),
                              children: [
                            TextSpan(
                                text: "Resend Code",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                style: const TextStyle(
                                    color: Colors.cyan,
                                    fontWeight: FontWeight.bold))
                          ])))),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  elevation: 0,
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.cyan,
                ),
                child: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
