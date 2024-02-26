import 'package:auction_app/blocs/auth_bloc/auth_bloc.dart';
import 'package:auction_app/views/home_page/home_screen.dart';
import 'package:flutter/material.dart';

import '../views/auth/login/login_page.dart';

List<Page> onGenerateAppViewPages(AuthStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AuthStatus.authenticated:
      return [HomeScreen.page()];
    case AuthStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
