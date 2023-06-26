import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/login_viewmodel/login_viewmodel.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool obscureText = true;
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _viewModel = Modular.get<LoginViewModel>();

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Center(
                child: Text(
                  'app_name'.i18n(),
                  style: const TextStyle(
                    height: -11,
                    fontSize: 15,
                    color: Color.fromRGBO(70, 70, 60, 1),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor:Color.fromRGBO(83, 104, 141, 1),
                    hintText: 'email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(83, 104, 141, 1),
                    hintText: 'nome',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(83, 104, 141, 1),
                    hintText: 'senha',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _passwordConfirmationController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(83, 104, 141, 1),
                    hintText: 'confirmar senha',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed:  () async => {Navigator.pushNamed(context, '/home')},
                style: const  ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 53, 79, 122),
                  ),
                ),
                child: const Text('Registrar',style: TextStyle(color: Color.fromARGB(255, 223, 216, 216)),),
              ),
               Center(
                child: Text(
                  'signup'.i18n(),
                  style: const TextStyle(
                    height: 0,
                    fontSize: 15,
                    color: Color.fromRGBO(70, 70, 60, 1),
                  ),
                ),
              ),
               const ElevatedButton(
                //onPressed: () async => {Navigator.pushNamed(context, '/home')},
                onPressed: null,
                style:  ButtonStyle(shadowColor: MaterialStatePropertyAll(Colors.transparent),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.transparent,
                  ),
                ),
                child: Text('Entrar',style: TextStyle(color: Color.fromARGB(255, 223, 216, 216)),),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}