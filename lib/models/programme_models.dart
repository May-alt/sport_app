import 'package:flutter/material.dart';

class ProgrammeModels {
  String? text;
  String? image;
  String? title;
  Color? color;
  dynamic? type;
  String? titleprog;
  String? calories;
  String? time;
  String? desc;
  List<EntainemtsWoork> programmes = [];

  ProgrammeModels({
    required this.text,
    required this.image,
    required this.title,
    required this.color,
    required this.type,
    required this.titleprog,
    required this.calories,
    required this.time,
    required this.desc,
    required this.programmes,
  });

  ProgrammeModels.fromJson(Map<String, dynamic> Json) {
    text = Json['text'];
    image = Json['image'];
    title = Json['title'];
    color = Json['color'];
    type = Json['type'];
    titleprog = Json['titleprog'];
    calories = Json['calories'];
    time = Json['time'];
    desc = Json['desc'];
    Json['programmes'].forEach((element) {
      programmes.add(EntainemtsWoork.fromJson(element));
    });
  }

  Map<String, dynamic> ToMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['image'] = this.image;
    data['title'] = this.title;
    data['color'] = this.color;
    data['type'] = this.type;
    data['titleprog'] = this.titleprog;
    data['calories'] = this.calories;
    data['time'] = this.time;
    data['desc'] = this.desc;
    data['programmes'] = this.programmes;
    return data;
  }
}

class EntainemtsWoork {
  String? entImage;
  String? entName;
  String? entTime;

  EntainemtsWoork(
      {required this.entImage, required this.entName, required this.entTime});

  EntainemtsWoork.fromJson(dynamic json) {
    entImage = json['entImage'];
    entName = json['entName'];
    entTime = json['entTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['entImage'] = this.entImage;
    data['entName'] = this.entName;
    data['entTime'] = this.entTime;
    return data;
  }
}
