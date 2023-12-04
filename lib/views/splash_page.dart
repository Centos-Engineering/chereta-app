import 'package:auction_app/views/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_view/splash_view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashView(
        done: Done(
          const LoginScreen(),
          animationDuration: const Duration(seconds: 2),
          curve: Curves.bounceIn,
        ),
        logo: Image.asset('assets/images/splash_page.png'),
        title: const Text(
          'Empower Your Procurement,Unleash Success',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'Where Efficiency Meets Simplicity!',
            style: TextStyle(
                fontSize: 20,
                color: Colors.grey[500],
                fontWeight: FontWeight.w300),
          ),
        ),
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 151, 215, 242),
            ]),
      ),
      // child: Container(
      //   decoration: const BoxDecoration(
      //       gradient: LinearGradient(
      //     begin: Alignment.centerLeft,
      //     end: Alignment.bottomRight,
      //     colors: [
      //       Color.fromARGB(255, 255, 255, 255),
      //       Color.fromARGB(255, 151, 215, 242),
      //     ],
      //   )),
      //   child: Padding(
      //     padding: const EdgeInsets.only(top: 110, left: 30, right: 30),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Center(
      //           child: Image.asset('assets/images/splash_page.png'),
      //         ),
      //         const SizedBox(
      //           height: 40,
      //         ),
      //         const Text(
      //           'Empower Your Procurement,Unleash Success',
      //           style: TextStyle(fontSize: 20, color: Colors.black),
      //         ),
      //         const SizedBox(
      //           height: 40,
      //         ),
      //         Text(
      //           'Where Efficiency Meets Simplicity!',
      //           style: TextStyle(
      //               fontSize: 20,
      //               color: Colors.grey[500],
      //               fontWeight: FontWeight.w300),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      //  ),
      //);
    );
  }
}
