import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sport_app/models/user_models.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  RegisterCubit get(context) => BlocProvider.of(context);

  bool IspasswordShow = true;
  IconData sufixicon = CupertinoIcons.eye_fill;

  void changeRegisterPasswordVisibility() {
    IspasswordShow = !IspasswordShow;
    sufixicon = IspasswordShow
        ? CupertinoIcons.eye_fill
        : CupertinoIcons.eye_slash_fill;
    emit(ChangeRegisterPasswordVisibility());
  }

// Regiser Function

  void UserRegister({
    required String email,
    required String password,
    required String rename,
  }) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user!.email);
      print(value.user!.uid);

      UserSaveData(email: email, name: rename, uid: value.user!.uid);

      emit(RegisterSuccesState());
    }).catchError((error) {
      emit(RegisterErrorState(error.toString()));
    });
  }

  void UserSaveData(
      {required String email, required String name, required String uid}) {
    UserModels userModel =
        UserModels(Username: name, Useremail: email, Uid: uid);

    FirebaseFirestore.instance
        .collection("Users")
        .doc(uid)
        .set(userModel.ToMap())
        .then((value) {
      emit(CreateUserSuccessState(uid));
    }).catchError((error) {
      emit(CreateUserErrorState(error.toString()));
    });
  }
}
