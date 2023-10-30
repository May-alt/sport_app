import 'package:flutter/material.dart';
import 'package:sport_app/ui/pages/programme/work_out/workout_programme/components/build_body_butt_views.dart';
import 'package:sport_app/ui/pages/programme/work_out/workout_programme/components/build_header.dart';

class WorkOutViews extends StatelessWidget {
  final String image;
  final String title;
  final String calories;
  final String description;
  final String titleprog;
  final String time;

  // List programme = [];
  List Entaiments = [];

  WorkOutViews({
    Key? key,
    required this.image,
    required this.title,
    required this.calories,
    required this.description,
    required this.titleprog,
    required this.time,
    required this.Entaiments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BuildHeaderButtViews(titre: title),
            BuildBodyButtViews(
              title: title,
              titleprog: titleprog,
              description: description,
              calories: calories,
              time: time,
              image: image,
              Entaiments: Entaiments,
              // programmes: programme,
            ),
          ],
        ),
      ),
    );
  }
}
