import 'package:auction_app/cubits/login/login_cubit.dart';
import 'package:auction_app/views/auth/signup/signup_form.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  static Page page() => const MaterialPage<void>(child: LoginForm());
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state.status == LoginStatus.error) {}
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
            child: Form(
              child: Column(
                children: [
                  const Center(
                    child: CircleAvatar(
                      radius: 50,
                      foregroundImage:
                          AssetImage('assets/images/login_user.png'),
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
                  BlocBuilder<LoginCubit, LoginState>(
                    buildWhen: (previous, current) =>
                        previous.email != current.email,
                    builder: (context, state) {
                      return TextFormField(
                          onChanged: (email) {
                            context.read<LoginCubit>().emailChanged(email);
                          },
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300)));
                    },
                  ),
                  BlocBuilder<LoginCubit, LoginState>(
                    buildWhen: (previous, current) =>
                        previous.password != current.password,
                    builder: (context, state) {
                      return TextFormField(
                          onChanged: (password) {
                            context
                                .read<LoginCubit>()
                                .passwordChanges(password);
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                            suffixIcon: GestureDetector(
                              child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.asset(
                                      'assets/images/show_password.png')),
                            ),
                          ));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const LoginButton(),
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
                                                  const SignupScreen())),
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
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          return state.status == LoginStatus.submitting
              ? const Center(child: CircularProgressIndicator())
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    backgroundColor: Colors.cyan,
                  ),
                  onPressed: () {
                    context.read<LoginCubit>().logInWithCredentials();
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white),
                  ));
        },
      ),
    );
  }
}
