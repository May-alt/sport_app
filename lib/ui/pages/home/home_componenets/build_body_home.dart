import 'package:flutter/material.dart';
import 'package:sport_app/generated/assets.dart';
import 'package:sport_app/ui/pages/home/work_corps_complet/work_corps_compt.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:sport_app/utils/styles/colors.dart';

class BuildBodyHome extends StatefulWidget {
  const BuildBodyHome({Key? key}) : super(key: key);

  @override
  State<BuildBodyHome> createState() => _BuildBodyHomeState();
}

class _BuildBodyHomeState extends State<BuildBodyHome> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavToAotherPage(context, CorpsCompletsWorkOut());
      },
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(color: Colors.white54, blurRadius: 2),
            ]),
        child: Stack(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Cpurple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: Text(
                  "Démarrer",
                  style: TextStyle(color: Cwhite, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Container(
                    alignment: Alignment.bottomRight,
                    //color: Colors.pink,
                    child: Image.asset(
                      "assets/running.png",
                    ),
                    height: 180),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 70, top: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Exercices pour Corps complet",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Cwhite,
                  letterSpacing: 0.8,
                  // fontFamily: "Cairo"
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
