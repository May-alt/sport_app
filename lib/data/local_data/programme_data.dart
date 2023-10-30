import 'package:flutter/material.dart';
import 'package:sport_app/models/programme_models.dart';
import 'package:sport_app/ui/pages/programme/work_out/workout_programme/workout_prog.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';

List<ProgrammeModels> programmeModels = [
  ProgrammeModels(
      type: "Butt",
      text:
          "Programme d'exercices pour débutants pour les entainements cardio et de force",
      image: "assets/images/butt.jpg",
      title: "Butt",
      color: Colors.brown,
      calories: " 39 Carlories",
      desc:
          "Snappy and productive. A compacted exercice for those short on shedule.",
      time: "7 Minutes",
      titleprog: "Fast Workout-Butt",
      programmes: [
        EntainemtsWoork(
            entImage: "assets/butt_img/butt_thrust.gif",
            entName: "butt thrust",
            entTime: "30 sec"),
        EntainemtsWoork(
            entImage: "assets/butt_img/fire_hk_l.gif",
            entName: "fire hydrant kicks",
            entTime: "20 sec"),
        EntainemtsWoork(
            entImage: "assets/butt_img/leg_hip_ex_lef.gif",
            entName: "One leg hip extension(left)",
            entTime: "20 sec"),
        EntainemtsWoork(
            entImage: "assets/butt_img/leg_hip_ex_rgth.gif",
            entName: "One leg hip extension(right)",
            entTime: "20 sec"),
        EntainemtsWoork(
            entImage: "assets/butt_img/pile_sqt.gif",
            entName: "Pile squats",
            entTime: "30 sec"),
        EntainemtsWoork(
            entImage: "assets/butt_img/side-lunge-lt.gif",
            entName: "left side lunges",
            entTime: "20 sec"),
        EntainemtsWoork(
            entImage: "assets/butt_img/squat-side-kick.gif",
            entName: "side kick squat",
            entTime: "30 sec"),
      ]),
  ProgrammeModels(
      type: "All",
      text:
          "Programme d'entainement complet du corps qui vous aidera à entainer haque muscle",
      image: "assets/images/all.jpg",
      title: "All",
      color: Colors.purple,
      calories: " 101 Carlories",
      desc:
          "Snappy and productive. A compacted exercice for those short on shedule.",
      time: "20 Minutes",
      titleprog: "Fast Workout",
      programmes: [
        EntainemtsWoork(
            entImage: "assets/butt_img/squat-side-kick.gif",
            entName: "entName1",
            entTime: "entTime1"),
        EntainemtsWoork(
            entImage: "assets/butt_img/squat-side-kick.gif",
            entName: "entName1",
            entTime: "entTime1"),
        EntainemtsWoork(
            entImage: "assets/butt_img/squat-side-kick.gif",
            entName: "entName2",
            entTime: "entTime3"),
        EntainemtsWoork(
            entImage: "assets/butt_img/squat-side-kick.gif",
            entName: "entName2",
            entTime: "entTime3"),
      ]),
  ProgrammeModels(
      type: "Abs",
      text: "exercices de force qui affectent les muscles abdominaux",
      image: "assets/images/abs.jpg",
      title: "Abs",
      color: Colors.pinkAccent,
      calories: " 51 Carlories",
      desc:
          "A higher power exercise that is more centered around the abs.ideal "
          "for those hoping to get a conditioned and compliment look.",
      time: "12 Minutes",
      titleprog: "Abs fast-Workout",
      programmes: [
        EntainemtsWoork(
            entImage: "assets/butt_img/squat-side-kick.gif",
            entName: "entName1",
            entTime: "entTime1"),
        EntainemtsWoork(
            entImage: "assets/butt_img/squat-side-kick.gif",
            entName: "entName2",
            entTime: "entTime3"),
        EntainemtsWoork(
            entImage: "assets/butt_img/squat-side-kick.gif",
            entName: "entName2",
            entTime: "entTime3"),
      ]),
];
