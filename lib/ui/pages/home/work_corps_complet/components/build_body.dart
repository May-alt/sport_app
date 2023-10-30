import 'package:flutter/material.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:sport_app/utils/styles/colors.dart';

class BuildBodyWorkCorps extends StatelessWidget {
  const BuildBodyWorkCorps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReusPaddingAll(
      child: SafeArea(
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) => SizedBox(
            height: 02.0,
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                CreateModelAlert(context,
                    assetImage:
                        AssetImage("assets/butt_img/squat-side-kick.gif"),
                    text: "30 sec");
              },
              child: Card(
                  child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("assets/butt_img/squat-side-kick.gif"),
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
                          "side kick squat",
                          style: TextStyle(
                              color: CBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "30 sec",
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
          },
        ),
      ),
    );
  }
}
