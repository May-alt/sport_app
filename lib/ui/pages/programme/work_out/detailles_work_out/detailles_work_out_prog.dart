import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/models/programme_models.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';

class DetaillesWorkOutProg extends StatefulWidget {
  final String title;
  final String calories;
  final String description;
  final String titleprog;
  final String time;
  final String image;
  List Entaiments = [];

  DetaillesWorkOutProg({
    Key? key,
    required this.title,
    required this.description,
    required this.time,
    required this.calories,
    required this.titleprog,
    required this.image,
    required this.Entaiments,
    //  required this.programmes,
  }) : super(key: key);

  @override
  State<DetaillesWorkOutProg> createState() => _DetaillesWorkOutProgState();
}

class _DetaillesWorkOutProgState extends State<DetaillesWorkOutProg> {
  @override
  Widget build(BuildContext context) {
    int count = 0;

    void initState() {
      super.initState();
    }
    // print(Entaiments.length);

    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.image), fit: BoxFit.cover),
            ),
            child: ReusPaddingAll(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FadeInDown(
                    child: Text(
                      widget.titleprog,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 05.0,
                  ),
                  FadeInLeft(
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          widget.calories,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                  FadeInLeft(
                    child: Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Cpurple,
                        ),
                        Text(
                          widget.time,
                          style: Theme.of(context).textTheme.bodyText2,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(210),
      ),
      body: ReusPaddingAll(
        child: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 02.0,
                ),
                itemCount: widget.Entaiments.length,
                itemBuilder: (context, index) {
                  return buildBodydetaillesWorkOut(
                      widget.Entaiments[index], context, index, count);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        )),
      ),
    );
  }

  buildBodydetaillesWorkOut(EntainemtsWoork exercice, context, index, count) =>
      InkWell(
        onTap: () {
          buildModelAfficheAlert(context, exercice, index, count);
        },
        child: Card(
            child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("${exercice.entImage}"),
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Text("side kick squat",style: TextStyle(color: CBlack,fontSize: 16,fontWeight: FontWeight.bold),),
                  Text(
                    "${exercice.entName}",
                    style: TextStyle(
                        color: CBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${exercice.entTime}",
                    style: TextStyle(
                        color: CBlackFoncy,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        )),
      );

  buildModelAfficheAlert(context, EntainemtsWoork affiche, index, count) =>
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //vertical
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Let's start".toUpperCase(),
                  style: TextStyle(
                      color: CBlack, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //  image: AssetImage("${affiche.entImage![count]}")as ImageProvider,
                      image: AssetImage("${affiche.entImage}") as ImageProvider,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "DONNE".toUpperCase(),
                        style: TextStyle(color: CBlack),
                      )),
                ),
              ],
            ),
          );
        },
      );
}
