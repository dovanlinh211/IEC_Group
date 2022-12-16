// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LogoutStore on _LogoutStore, Store {
  late final _$valAtom = Atom(name: '_LogoutStore.val', context: context);

  @override
  LogoutResponse get val {
    _$valAtom.reportRead();
    return super.val;
  }

  @override
  set val(LogoutResponse value) {
    _$valAtom.reportWrite(value, super.val, () {
      super.val = value;
    });
  }

  late final _$hasErrorAtom =
      Atom(name: '_LogoutStore.hasError', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_LogoutStore.isLoading', context: context);

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

  late final _$logoutResponseAtom =
      Atom(name: '_LogoutStore.logoutResponse', context: context);

  @override
  ObservableFuture<LogoutResponse> get logoutResponse {
    _$logoutResponseAtom.reportRead();
    return super.logoutResponse;
  }

  @override
  set logoutResponse(ObservableFuture<LogoutResponse> value) {
    _$logoutResponseAtom.reportWrite(value, super.logoutResponse, () {
      super.logoutResponse = value;
    });
  }

  late final _$logoutAsyncAction =
      AsyncAction('_LogoutStore.logout', context: context);

  @override
  Future<LogoutResponse> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  @override
  String toString() {
    return '''
val: ${val},
hasError: ${hasError},
isLoading: ${isLoading},
logoutResponse: ${logoutResponse}
    ''';
  }
}
