import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo_1/core/extensions/l10n_x.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(context.translate.helloWorld),
      ),
    );
  }
}
