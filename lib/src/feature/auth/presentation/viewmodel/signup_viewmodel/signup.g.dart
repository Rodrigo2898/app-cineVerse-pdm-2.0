part of 'signup_viewmodel.dart';

mixin _$SignUpViewModel on _SignUpViewModelBase, Store {
  final _$usernameAtom = Atom(name: '_SignUpViewModelBase.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignUpinViewModelBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_SignUpViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_SignUpViewModelBaseActionController =
      ActionController(name: '_SignUpViewModelBase');

  @override
  void validateUsername() {
    final $actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.validateUsername');
    try {
      return super.validateUsername();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction($actionInfo);
    }
  }

  @override
  void validatePassword() {
    final $actionInfo = _$_SignUpViewModelBaseActionController .startAction(
        name: '_SignUpViewModelBase.validatePassword');
    try {
      return super.validatePassword();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction($actionInfo);
    }
  }

  @override
  String toString() {
    return '''
      email: $email,
      username: $username,
      password: $password,
      isLoading: $isLoading
    ''';
  }
}

mixin _$SignUpError on _SignUpErrorBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_SignUpErrorBase.hasErrors'))
          .value;

  final _$usernameAtom = Atom(name: '_SignUpErrorBase.username');

  @override
  String? get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String? value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignUpErrorBase.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$SignUpAtom = Atom(name: '_SignUpErrorBase.signUp');

  @override
  String? get signUp {
    _$SignUpAtom.reportRead();
    return super.signUp;
  }

  @override
  set signUp(String? value) {
    _$SignUpAtom.reportWrite(value, super.signUp, () {
      super.signUp = value;
    });
  }

  @override
  String toString() {
    return '''
      email: $email,
      username: $username,
      password: $password,
      signUp: $signUp,
      hasErrors: $hasErrors
      ''';
  }
}