import 'package:auction_app/views/auth/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
          child: Form(
            child: Column(
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 50,
                    foregroundImage: AssetImage('assets/images/login_user.png'),
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
                        "SIGN IN",
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
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300))),
                TextFormField(
                    decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w300),
                  suffixIcon: GestureDetector(
                    child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('assets/images/show_password.png')),
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
                          borderRadius: BorderRadius.circular(10), // <-- Radius
                        ),
                        elevation: 0,
                        backgroundColor: Colors.cyan,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: RichText(
                            text: TextSpan(
                                text: "Don't have an account? ",
                                style: const TextStyle(color: Colors.grey),
                                children: [
                              TextSpan(
                                  text: "Sign Up",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpScreen())),
                                  style: const TextStyle(color: Colors.cyan))
                            ])))),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
