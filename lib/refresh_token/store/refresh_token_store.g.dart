// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RefreshTokenStore on _RefreshTokenStore, Store {
  late final _$refreshTokenAtom =
      Atom(name: '_RefreshTokenStore.refreshToken', context: context);

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

  late final _$accessTokenAtom =
      Atom(name: '_RefreshTokenStore.accessToken', context: context);

  @override
  String get accessToken {
    _$accessTokenAtom.reportRead();
    return super.accessToken;
  }

  @override
  set accessToken(String value) {
    _$accessTokenAtom.reportWrite(value, super.accessToken, () {
      super.accessToken = value;
    });
  }

  late final _$expiresInAtom =
      Atom(name: '_RefreshTokenStore.expiresIn', context: context);

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
      Atom(name: '_RefreshTokenStore.userAuthData', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_RefreshTokenStore.isLoading', context: context);

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
      Atom(name: '_RefreshTokenStore.hasError', context: context);

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
      Atom(name: '_RefreshTokenStore.loginResponse', context: context);

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

  late final _$loginResponseDataAtom =
      Atom(name: '_RefreshTokenStore.loginResponseData', context: context);

  @override
  LoginResponse get loginResponseData {
    _$loginResponseDataAtom.reportRead();
    return super.loginResponseData;
  }

  @override
  set loginResponseData(LoginResponse value) {
    _$loginResponseDataAtom.reportWrite(value, super.loginResponseData, () {
      super.loginResponseData = value;
    });
  }

  late final _$checkRefreshTokenAsyncAction =
      AsyncAction('_RefreshTokenStore.checkRefreshToken', context: context);

  @override
  Future<bool> checkRefreshToken() {
    return _$checkRefreshTokenAsyncAction.run(() => super.checkRefreshToken());
  }

  late final _$getAccessTokenAsyncAction =
      AsyncAction('_RefreshTokenStore.getAccessToken', context: context);

  @override
  Future<String> getAccessToken() {
    return _$getAccessTokenAsyncAction.run(() => super.getAccessToken());
  }

  @override
  String toString() {
    return '''
refreshToken: ${refreshToken},
accessToken: ${accessToken},
expiresIn: ${expiresIn},
userAuthData: ${userAuthData},
isLoading: ${isLoading},
hasError: ${hasError},
loginResponse: ${loginResponse},
loginResponseData: ${loginResponseData}
    ''';
  }
}
