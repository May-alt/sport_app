part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class ChangeRegisterPasswordVisibility extends RegisterState {}

// Register state
class RegisterLoadingState extends RegisterState {}

class RegisterSuccesState extends RegisterState {}

class RegisterErrorState extends RegisterState {
  final String error;

  RegisterErrorState(this.error);
}

// save user data state(Create User)

class CreateUserSuccessState extends RegisterState {
  final String uid;

  CreateUserSuccessState(this.uid);
}

class CreateUserErrorState extends RegisterState {
  final String error;

  CreateUserErrorState(this.error);
}
