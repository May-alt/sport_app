import 'package:flutter/material.dart';
import 'package:sport_app/generated/assets.dart';
import 'package:sport_app/ui/pages/home/home_componenets/build_header_home.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/ui/pages/home/home_componenets/build_body_home.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildHeaderHome(),
                SizedBox(
                  height: 20.0,
                ),
                BuildBodyHome(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
