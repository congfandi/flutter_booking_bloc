import 'package:booking/config/config.dart';
import 'package:flutter/cupertino.dart';

class LoginState {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  HttpStateStatus httpStateStatus = HttpStateStatus.idle;

  LoginState init() {
    return LoginState();
  }

  LoginState clone() {
    return LoginState();
  }
}
