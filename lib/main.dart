import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/data/cubit/app_cubit.dart';
import 'package:sport_app/net_work/cache_helper.dart';
import 'package:sport_app/ui/authentification/login/login.dart';
import 'package:sport_app/ui/onbording/on_bording.dart';
import 'package:sport_app/main_layouts.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/utils/styles/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await CacheHelper.init();

//get data from shared
  bool? isDark = CacheHelper.getData(key: "isDark");
  print("Dark situation");
  print(isDark.toString());

  bool? onBord = CacheHelper.getData(key: 'onBording');
  print("Boding situation");
  print(onBord.toString());

  String? Uid = CacheHelper.getData(key: 'uid');

  print("Uid of User");
  print(Uid.toString());

  Widget? widgets;

  //function
  if (onBord != null) {
    if (Uid != null) {
      widgets = MainLayouts();
    } else {
      widgets = LoginViews();
    }
  } else {
    widgets = OnBordingViews();
  }

  runApp(
    MyApp(
      isDark: isDark,
      startWidgets: widgets,
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool? isDark;
  final Widget startWidgets;

  MyApp({
    super.key,
    this.isDark,
    required this.startWidgets,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AppCubit()..changeAppModeTheme(modefromshared: isDark),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);

          return MaterialApp(
            title: 'Sport_app',
            theme: ligthTheme,
            darkTheme: darkTheme,
            themeMode: cubit.isDark ? ThemeMode.dark : ThemeMode.light,

            debugShowCheckedModeBanner: false,
            //  home:startWidgets ,
            home: startWidgets,
            // home:MainLayouts(),
          );
        },
      ),
    );
  }
}
