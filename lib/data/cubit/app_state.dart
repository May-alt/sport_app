part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class changeNavigationBarState extends AppState {}

class changeAppModeState extends AppState {}

class CountPlusState extends AppState {}
