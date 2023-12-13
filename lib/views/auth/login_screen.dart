import 'package:auction_app/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:auction_app/views/auth/signup_screen.dart';
import 'package:auction_app/views/homepage/home_screen.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
          child: Form(
            key: _formKey,
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
                    controller: phoneController,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300))),
                TextFormField(
                    controller: passwordController,
                    obscureText: true,
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
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is AuthError) {
                      CherryToast.error(title: Text(state.error));
                    } else if (state is Authenticated) {
                      print("Authenticated");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    }
                  },
                  child: BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                    if (state is AuthInitial || state is NotAuthenticated) {
                      return SizedBox(
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
                              if (_formKey.currentState!.validate()) {
                                final authBloc =
                                    BlocProvider.of<AuthBloc>(context);
                                authBloc.add(LogIn(
                                    email: phoneController.value.text,
                                    password: passwordController.value.text,
                                    staySignedIn: true));
                                debugPrint(authBloc.state.toString());
                              }
                            },
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.white),
                            )),
                      );
                    } else if (state is AuthLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Container();
                  }),
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
