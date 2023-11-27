import 'package:auction_app/views/auth/login_screen.dart';
import 'package:auction_app/views/auth/otp_verification_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                child: Form(
                    child: Column(children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 50,
                      foregroundImage:
                          AssetImage('assets/images/signup_logo.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(children: <Widget>[
                      Expanded(
                          child: Divider(
                        color: Colors.black45,
                      )),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.black45,
                      )),
                    ]),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'First Name',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300))),
                  TextFormField(
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Last Name',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300))),
                  TextFormField(
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300))),
                  TextFormField(
                      decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                    suffixIcon: GestureDetector(
                      child: Padding(
                          padding: const EdgeInsets.all(8),
                          child:
                              Image.asset('assets/images/show_password.png')),
                    ),
                  )),
                  TextFormField(
                      decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                    suffixIcon: GestureDetector(
                      child: Padding(
                          padding: const EdgeInsets.all(8),
                          child:
                              Image.asset('assets/images/show_password.png')),
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey),
                      ))),
                  const SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // <-- Radius
                          ),
                          elevation: 0,
                          backgroundColor: Colors.cyan,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const OTPVerificationScreen()));
                        },
                        child: const Text(
                          'Create An Account',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: RichText(
                              text: TextSpan(
                                  text: "Already have an account? ",
                                  style: const TextStyle(color: Colors.grey),
                                  children: [
                                TextSpan(
                                    text: "Sign In",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginScreen())),
                                    style: const TextStyle(color: Colors.cyan))
                              ])))),
                  const SizedBox(
                    height: 100,
                  ),
                ])))));
  }
}
