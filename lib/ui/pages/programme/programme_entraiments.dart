import 'package:flutter/material.dart';
import 'package:sport_app/models/programme_models.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/ui/pages/programme/work_out/workout_programme/workout_prog.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sport_app/data/local_data/programme_data.dart';

class EntainemtsViews extends StatefulWidget {
  const EntainemtsViews({Key? key}) : super(key: key);

  @override
  State<EntainemtsViews> createState() => _EntainemtsViewsState();
}

class _EntainemtsViewsState extends State<EntainemtsViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReusPaddingAll(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Entainement quotidien ",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5),
              const SizedBox(
                height: 50,
              ),
              BuildBodyProgramme(context),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BuildBodyProgramme(index) => Expanded(
          child: CarouselSlider(
        items: programmeModels.map((e) {
          return Scrollprogramme(e);
        }).toList(),
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          disableCenter: true,
        ),
      ));

  Widget Scrollprogramme(ProgrammeModels e) => InkWell(
        onTap: () {
          NavToAotherPage(
            context,
            WorkOutViews(
              image: e.image.toString(),
              title: e.title.toString(),
              calories: e.calories.toString(),
              description: e.desc.toString(),
              titleprog: e.titleprog.toString(),
              time: e.time.toString(),
              Entaiments: e.programmes,
              //  programme: e.programmes,
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage("${e.image}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                    child: Text("${e.title}",
                        style: TextStyle(
                            fontSize: 20,
                            color: Cwhite,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: e.color,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
                height: 100,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "${e.text}",
                    style: TextStyle(fontSize: 18, color: Cwhite),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
