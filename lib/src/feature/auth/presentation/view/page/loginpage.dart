import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/login_viewmodel/login_viewmodel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _viewModel = Modular.get<LoginViewModel>();

  
String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "E-mail obrigatório";
    }
    if (!value.contains("@")) {
      return "E-mail inválido";
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Senha obrigatória";
    }
    if (value.length < 8) {
      return "Senha deve ter no mínimo 8 caracteres";
    }
    return null;
  }

  void _handleSubmit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 1, 4, 34),
    body: Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Center(
                child: Text(
                  'app_name'.i18n(),
                  style: const TextStyle(
                    height: -15,
                    fontSize: 15,
                    color: Color.fromRGBO(70, 70, 60, 1),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _emailController,
                  validator: _validateEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor:  Color.fromRGBO(83, 104, 141, 1),
                    hintText: 'email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _passwordController,
                  validator: _validatePassword,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(83, 104, 141, 1),
                    hintText: 'senha',
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => {_handleSubmit()},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 53, 79, 122),
                  ),
                ),
                child: const Text('Entrar'),
              ),
              const ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.transparent,
                  ),
                ),
                child: Text('Recuperar Senha',style: TextStyle(color: Color.fromARGB(255, 223, 216, 216)),),
              ),
               ElevatedButton(
                onPressed: () async => {Navigator.pushNamed(context, 'signup')},
                style: const ButtonStyle(shadowColor: MaterialStatePropertyAll(Colors.transparent),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.transparent,
                  ),
                ),
                child: const Text('Registre-se',style: TextStyle(color: Color.fromARGB(255, 223, 216, 216)),),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}