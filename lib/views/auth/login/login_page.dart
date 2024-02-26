import 'package:auction_app/cubits/login/login_cubit.dart';
import 'package:auction_app/repositories/auth_repository.dart';
import 'package:auction_app/views/auth/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Page page() => const MaterialPage<void>(child: LoginPage());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(
        context.read<AuthRepository>(),
      ),
      child: const LoginForm(),
    );
  }
}
