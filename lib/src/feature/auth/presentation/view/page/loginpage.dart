import 'package:cineverse_app/src/common/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import 'package:cineverse_app/src/feature/auth/presentation/viewmodel/login_viewmodel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  late ColorScheme _colors;
  late ThemeData _theme;

  var store = Modular.get<LoginViewModel>();

  Widget get _loadingIndicator => Visibility(
    visible: store.isLoading,
    child: const LinearProgressIndicator(
          backgroundColor: Colors.blueGrey,
        ),
  );

  Widget get _username => widget.createFormField(
    title: "User", 
    theme: _theme,
    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.next,
    hint: "our username",
    enabled: !store.isLoading,
    errorText: store.error.username,
    onChange: (value) => store.username = value,
  );

    Widget get _password => widget.createFormField(
        title: 'password'.i18n(),
        theme: _theme,
        keyboardType: TextInputType.text,
        obscureText: true,
        hint: 'senha',
        enabled: !store.isLoading,
        errorText: store.error.password,
        onChange: (value) => store.password = value,
    );

  Widget get _loginButton => Container(
        margin: const EdgeInsets.fromLTRB(30, 15, 30, 5),
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          onPressed: store.isLoading ? null : store.login,
          child: Text('login'.i18n()),
        ),
    );

  Widget get _forgotPasswordButton => Container(
        margin: const EdgeInsets.fromLTRB(30, 30, 30, 20),
        width: double.infinity,
        height: 56,
        child: TextButton(
          style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
          onPressed: store.isLoading ? null : () {},
          child: Text('forgot_password'.i18n()),
        ),
    );

  Widget get _signUp => Container(
        margin: const EdgeInsets.fromLTRB(30, 40, 30, 30),
        height: 56,
        width: double.infinity,
        child: OutlinedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          onPressed: store.isLoading
              ? null
              : () {
                  Navigator.pop(context);
                  Modular.to.pushNamed('/signup');
                },
          child: Text('signup'.i18n()),
        ),
    );


    Widget get _teste => Container(
        margin: const EdgeInsets.fromLTRB(30, 80, 30, 30),
        height: 56,
        width: double.infinity,
        child: OutlinedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          onPressed: store.isLoading
              ? null
              : () {
                  Navigator.pop(context);
                  Modular.to.pushNamed('/home');
                },
          child: const Text("teste"),
        ),
    );

  Widget get _divider => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Expanded(
              child: Divider(thickness: 1, indent: 25, endIndent: 10)),
          Text(
            'divider_text'.i18n(),
            style: _theme.textTheme.headlineMedium,
          ),
          const Expanded(
            child: Divider(
              thickness: 1,
              indent: 10,
              endIndent: 25,
            ),
          ),
        ],
    );

    @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    _colors = _theme.colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          child: Observer(builder: (_) {
            return Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _loadingIndicator,
                  const SizedBox(height: 5),
                  _username,
                  _password,
                  _loginButton,
                  _forgotPasswordButton,
                  _divider,
                  _signUp,
                  _teste
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

}