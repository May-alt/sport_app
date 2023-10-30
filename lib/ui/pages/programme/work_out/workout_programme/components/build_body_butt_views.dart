import 'package:flutter/material.dart';
import 'package:sport_app/data/local_data/programme_data.dart';
import 'package:sport_app/models/programme_models.dart';
import 'package:sport_app/ui/pages/programme/work_out/detailles_work_out/detailles_work_out_prog.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:animate_do/animate_do.dart';

class BuildBodyButtViews extends StatelessWidget {
  final String title;
  final String calories;
  final String description;
  final String titleprog;
  final String time;
  final String image;

  //List programmes = [];
  List Entaiments = [];

  BuildBodyButtViews({
    required this.title,
    required this.calories,
    required this.description,
    required this.titleprog,
    required this.time,
    required this.image,
    required this.Entaiments,
    // required this.programmes,
    Key? key,
  }) : super(key: key);

  //******************************

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
          child: ReusPaddingAll(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Beginner",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Cpurple,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 05.0,
                ),
                Text(
                  titleprog,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: CBlack, fontSize: 25),
                ),
                SizedBox(
                  height: 05.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.local_fire_department_outlined,
                      color: Colors.red,
                    ),
                    Text(
                      calories,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: CBlack,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 05.0,
                    ),
                    Icon(
                      Icons.timer,
                      color: Cpurple,
                    ),
                    Text(
                      time,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: CBlack,
                          fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: CBlack, fontSize: 16),
                ),
                SizedBox(
                  height: 05.0,
                ),
                Text(
                  description,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: CBlackFoncy,
                      fontSize: 14),
                ),
                Spacer(),
                reusAuthButtom(
                  onPressed: () {
                    NavToAotherPage(
                      context,
                      DetaillesWorkOutProg(
                        title: title,
                        image: image,
                        time: time,
                        titleprog: titleprog,
                        calories: calories,
                        description: description,

                        Entaiments: Entaiments,
                        // programmes: programmes,
                      ),
                    );
                  },
                  text: "Commencer l'entainement",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
