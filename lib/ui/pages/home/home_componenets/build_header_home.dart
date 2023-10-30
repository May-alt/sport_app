import 'package:flutter/material.dart';
import 'package:sport_app/ui/pages/home/coach_work_out/coach_work.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:sport_app/utils/styles/colors.dart';

class BuildHeaderHome extends StatelessWidget {
  const BuildHeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Benvenue",
                  // style: TextStyle(color: CBlack, fontSize: 20),
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "Spots-App",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.purpleAccent,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.badge,
                  color: Colors.white,
                  size: 13,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 2, offset: Offset(0, 2))
              ]),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/images/header.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // color: Colors.amberAccent,
                  height: 50,
                  child: Row(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Jour 1",
                                  style: TextStyle(
                                      color: CBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 05.0,
                                ),
                                CircleAvatar(
                                    backgroundColor: CShadepurple, radius: 08),
                              ],
                            ),
                            Text(
                              "8 Minutes",
                              style: TextStyle(
                                  color: CBlackFoncy,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          ]),
                      Spacer(),
                      MaterialButton(
                        onPressed: () {
                          NavToAotherPage(context, CoachWorkOut());
                        },
                        height: 40,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 06),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: CShadepurple,
                        child: Text(
                          "Démarrer".toUpperCase(),
                          style: TextStyle(color: Cwhite, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          height: 100,
          //color: Colors.amberAccent,
          child: Stack(
            alignment: Alignment.bottomLeft,
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4),
                    ]),
                child: Text(
                  "La douleur que vous ressentez aujourd'hui  sera la force que vous ressentirez demain.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: CBlack,
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: Icon(
                    Icons.star_border_purple500_sharp,
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
