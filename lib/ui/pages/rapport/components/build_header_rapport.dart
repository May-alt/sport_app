import 'package:flutter/material.dart';
import 'package:sport_app/utils/styles/colors.dart';

class BuildHeaderRapprts extends StatefulWidget {
  const BuildHeaderRapprts({Key? key}) : super(key: key);

  @override
  State<BuildHeaderRapprts> createState() => _BuildHeaderRapprtsState();
}

class _BuildHeaderRapprtsState extends State<BuildHeaderRapprts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.only(left: 20.0),
              height: 200,
              color: Cpurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rapport",
                    style: TextStyle(
                        color: Cwhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        "assets/images/hed2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 2,
                        offset: Offset(0, 2))
                  ],
                  borderRadius: BorderRadius.circular(12)),
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Exercices",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        "0",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: CBlackFoncy,
                    width: 2,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Calories",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        "0.0",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: CBlackFoncy,
                    width: 2,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Heurs(min)",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        "0",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
