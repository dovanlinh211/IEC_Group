// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStore, Store {
  late final _$accesTokenAtom =
      Atom(name: '_LoginStore.accesToken', context: context);

  @override
  String get accesToken {
    _$accesTokenAtom.reportRead();
    return super.accesToken;
  }

  @override
  set accesToken(String value) {
    _$accesTokenAtom.reportWrite(value, super.accesToken, () {
      super.accesToken = value;
    });
  }

  late final _$refreshTokenAtom =
      Atom(name: '_LoginStore.refreshToken', context: context);

  @override
  String get refreshToken {
    _$refreshTokenAtom.reportRead();
    return super.refreshToken;
  }

  @override
  set refreshToken(String value) {
    _$refreshTokenAtom.reportWrite(value, super.refreshToken, () {
      super.refreshToken = value;
    });
  }

  late final _$valAtom = Atom(name: '_LoginStore.val', context: context);

  @override
  LoginResponse get val {
    _$valAtom.reportRead();
    return super.val;
  }

  @override
  set val(LoginResponse value) {
    _$valAtom.reportWrite(value, super.val, () {
      super.val = value;
    });
  }

  late final _$userNameAtom =
      Atom(name: '_LoginStore.userName', context: context);

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  late final _$typeAtom = Atom(name: '_LoginStore.type', context: context);

  @override
  String get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(String value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  late final _$emailAtom = Atom(name: '_LoginStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$isVerifiedAtom =
      Atom(name: '_LoginStore.isVerified', context: context);

  @override
  bool get isVerified {
    _$isVerifiedAtom.reportRead();
    return super.isVerified;
  }

  @override
  set isVerified(bool value) {
    _$isVerifiedAtom.reportWrite(value, super.isVerified, () {
      super.isVerified = value;
    });
  }

  late final _$expiresInAtom =
      Atom(name: '_LoginStore.expiresIn', context: context);

  @override
  int get expiresIn {
    _$expiresInAtom.reportRead();
    return super.expiresIn;
  }

  @override
  set expiresIn(int value) {
    _$expiresInAtom.reportWrite(value, super.expiresIn, () {
      super.expiresIn = value;
    });
  }

  late final _$userAuthDataAtom =
      Atom(name: '_LoginStore.userAuthData', context: context);

  @override
  dynamic get userAuthData {
    _$userAuthDataAtom.reportRead();
    return super.userAuthData;
  }

  @override
  set userAuthData(dynamic value) {
    _$userAuthDataAtom.reportWrite(value, super.userAuthData, () {
      super.userAuthData = value;
    });
  }

  late final _$autoLoginStatusAtom =
      Atom(name: '_LoginStore.autoLoginStatus', context: context);

  @override
  dynamic get autoLoginStatus {
    _$autoLoginStatusAtom.reportRead();
    return super.autoLoginStatus;
  }

  @override
  set autoLoginStatus(dynamic value) {
    _$autoLoginStatusAtom.reportWrite(value, super.autoLoginStatus, () {
      super.autoLoginStatus = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_LoginStore.isLoading', context: context);

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

  late final _$hasErrorAtom =
      Atom(name: '_LoginStore.hasError', context: context);

  @override
  bool get hasError {
    _$hasErrorAtom.reportRead();
    return super.hasError;
  }

  @override
  set hasError(bool value) {
    _$hasErrorAtom.reportWrite(value, super.hasError, () {
      super.hasError = value;
    });
  }

  late final _$loginResponseAtom =
      Atom(name: '_LoginStore.loginResponse', context: context);

  @override
  ObservableFuture<LoginResponse> get loginResponse {
    _$loginResponseAtom.reportRead();
    return super.loginResponse;
  }

  @override
  set loginResponse(ObservableFuture<LoginResponse> value) {
    _$loginResponseAtom.reportWrite(value, super.loginResponse, () {
      super.loginResponse = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('_LoginStore.login', context: context);

  @override
  Future<LoginResponse> login(LoginModel data) {
    return _$loginAsyncAction.run(() => super.login(data));
  }

  late final _$logoutAsyncAction =
      AsyncAction('_LoginStore.logout', context: context);

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  @override
  String toString() {
    return '''
accesToken: ${accesToken},
refreshToken: ${refreshToken},
val: ${val},
userName: ${userName},
type: ${type},
email: ${email},
isVerified: ${isVerified},
expiresIn: ${expiresIn},
userAuthData: ${userAuthData},
autoLoginStatus: ${autoLoginStatus},
isLoading: ${isLoading},
hasError: ${hasError},
loginResponse: ${loginResponse}
    ''';
  }
}
