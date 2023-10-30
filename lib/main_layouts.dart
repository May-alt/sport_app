import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sport_app/data/cubit/app_cubit.dart';
import 'package:sport_app/ui/pages/home/home.dart';
import 'package:sport_app/ui/pages/programme/programme_entraiments.dart';
import 'package:sport_app/ui/pages/rapport/rapport.dart';
import 'package:sport_app/ui/pages/setting/setting.dart';
import 'package:sport_app/utils/styles/colors.dart';

class MainLayouts extends StatelessWidget {
  const MainLayouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);

    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: cubit.Screens[cubit.currentIndex],
          bottomNavigationBar: Container(
            margin: EdgeInsets.all(15.0),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.purple.shade50,
            ),
            child: GNav(
                tabBorderRadius: 15,
                tabActiveBorder:
                    Border.all(color: Colors.transparent, width: 1),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                tabBackgroundColor: Colors.purple.withOpacity(0.2),
                // navigation bar padding
                gap: 8,
                // the tab button gap between icon and text
                activeColor: Cpurple,
                // selected icon and text color
                iconSize: 30,
                // tab button icon size
                color: CBlack,
                onTabChange: (index) {
                  cubit.ChangeAppNavigationBar(index);
                  /* setState(() {
                currentIndex = index;
                 print(currentIndex);
              });*/
                },
                tabs: [
                  GButton(
                    icon: CupertinoIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: CupertinoIcons.flame,
                    text: 'Programme',
                  ),
                  GButton(
                    icon: CupertinoIcons.chart_bar_circle,
                    text: 'Rapport',
                  ),
                  GButton(
                    icon: CupertinoIcons.settings,
                    text: 'settings',
                  ),
                ]),
          ),
        );
      },
    );
  }
}
