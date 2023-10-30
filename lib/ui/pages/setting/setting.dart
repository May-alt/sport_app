import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/data/cubit/app_cubit.dart';
import 'package:sport_app/net_work/cache_helper.dart';
import 'package:sport_app/ui/authentification/login/login.dart';
import 'package:sport_app/utils/function.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';

class SettingsViews extends StatefulWidget {
  const SettingsViews({Key? key}) : super(key: key);

  @override
  State<SettingsViews> createState() => _SettingsViewsState();
}

class _SettingsViewsState extends State<SettingsViews> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: ReusPaddingAll(
                child: Column(
                  children: [
                    Text("Paramétres et confidentialité",
                        style: Theme.of(context).textTheme.headline4),
                    SizedBox(
                      height: 20.0,
                    ),
                    reusCard(
                        icon: Icons.light,
                        onTap: () {
                          print("appMode");

                          AppCubit.get(context).changeAppModeTheme();
                        },
                        text: "mode"),
                    reusCard(
                        icon: Icons.logout,
                        onTap: () {
                          CreateAlertDialog(
                            context,
                            title: "Vous déconnecter de votre compte ?",
                            OkOnPressed: () {
                              CacheHelper.removeData(key: 'uid').then((value) {
                                NavToAndRemove(context, LoginViews());
                              });
                            },
                            AnnulerOnPressed: () {
                              Navigator.of(context).pop();
                            },
                          );
                        },
                        text: "Déconnexion"),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
