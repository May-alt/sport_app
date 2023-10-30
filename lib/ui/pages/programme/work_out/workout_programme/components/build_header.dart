import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/utils/styles/colors.dart';

class BuildHeaderButtViews extends StatelessWidget {
  final String titre;

  BuildHeaderButtViews({Key? key, required this.titre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, right: 10, left: 10),
      //  color: Colors.grey.shade50,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Cwhite,
              )),
          Text(
            titre,
            style: TextStyle(
                color: Cwhite,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
