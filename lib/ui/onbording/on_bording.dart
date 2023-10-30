import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:sport_app/main_layouts.dart';
import 'package:sport_app/net_work/cache_helper.dart';
import 'package:sport_app/ui/authentification/login/login.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:sport_app/utils/styles/colors.dart';

class OnBordingViews extends StatefulWidget {
  const OnBordingViews({Key? key}) : super(key: key);

  @override
  State<OnBordingViews> createState() => _OnBordingViewsState();
}

class _OnBordingViewsState extends State<OnBordingViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/one.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 100),
              child: Column(
                children: [
                  FadeInDown(
                    child: Text(
                      "LOSE WEIGHT IN 30 DAYS".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 60,
                        color: Cwhite,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Serif',
                      ),
                    ),
                  ),
                  Spacer(),
                  FadeInUp(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Track your progress Reward your wins",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Cwhite,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 08.0,
                        ),
                        Text(
                          "Don't waste time and start your new life today with a personalized training plan",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Cwhite, fontSize: 16),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.purple.shade50,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.purple.shade100,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.purple.shade200,
                              child: IconButton(
                                onPressed: () {
                                  CacheHelper.saveData(
                                          key: 'onBording', value: true)
                                      .then((value) {
                                    if (value) //si value true save w push
                                    {
                                      NavToAndRemove(context, LoginViews());
                                    }
                                  });

                                  //  NavToAndRemove(context, MainLayouts());
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
