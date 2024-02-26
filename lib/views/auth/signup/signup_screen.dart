import 'package:auction_app/cubits/cubits.dart';
import 'package:auction_app/cubits/signup/signup_cubit.dart';
import 'package:auction_app/repositories/auth_repository.dart';
import 'package:auction_app/views/auth/signup/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (_) => SignupCubit(
        context.read<AuthRepository>(),
      ),
      child: const SignupForm(),
    ));
  }
}
