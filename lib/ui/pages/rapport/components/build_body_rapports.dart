import 'package:flutter/material.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:fl_chart/fl_chart.dart';

class BuildBodyRapportsViews extends StatefulWidget {
  const BuildBodyRapportsViews({Key? key}) : super(key: key);

  @override
  State<BuildBodyRapportsViews> createState() => _BuildBodyRapportsViewsState();
}

class _BuildBodyRapportsViewsState extends State<BuildBodyRapportsViews> {
  @override
  Widget build(BuildContext context) {
    Key? chartRendererKey;

    return ReusPaddingAll(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            //Calendar
            Container(
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Cwhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                        blurStyle: BlurStyle.solid,
                      ),
                    ]),
                child: CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.utc(2000, 31, 01),
                  lastDate: DateTime.utc(2030, 31, 01),
                  onDateChanged: (value) {},
                )),

            SizedBox(height: 15.0),

            Container(
              padding: EdgeInsets.all(05.0),
              height: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Cwhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(0, 2),
                      blurRadius: 4,
                      blurStyle: BlurStyle.solid,
                    ),
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Poids (kg)",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Cpurple,
                            size: 20,
                          ))
                    ],
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: CBlackFoncy),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "30 derniers jours",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              "+9.7",
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
                              "Moyenne Annuelle",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              "61.0",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: LineChart(
                      LineChartData(maxX: 11, minX: 0, maxY: 6, minY: 0,

                          //pour faire les points
                          lineBarsData: [
                            LineChartBarData(color: Colors.red, spots: [
                              FlSpot(0, 3),
                              FlSpot(3, 3),
                              FlSpot(3, 6),
                              FlSpot(7, 0),
                              FlSpot(7, 6),
                            ])
                          ]),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}
