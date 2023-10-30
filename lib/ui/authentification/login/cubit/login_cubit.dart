import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  bool IspasswordShow = true;
  IconData sufixicon = CupertinoIcons.eye_fill;

  void changeLoginPasswordVisibility() {
    IspasswordShow = !IspasswordShow;
    sufixicon = IspasswordShow
        ? CupertinoIcons.eye_fill
        : CupertinoIcons.eye_slash_fill;
    emit(ChangeLoginPasswordVisibility());
  }

  void UserLogin({required String email, required String password}) {
    emit(LoginLoadingState());

    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user!.uid);
      print(value.user!.email);
      emit(LoginSuccesState(value.user!.uid));
    }).catchError((error) {
      emit(LoginErrorState(error.toString()));
    });
  }
}
