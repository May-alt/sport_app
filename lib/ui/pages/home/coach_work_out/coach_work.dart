import 'package:flutter/material.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:animate_do/animate_do.dart';
import 'package:sport_app/utils/styles/colors.dart';

class CoachWorkOut extends StatelessWidget {
  CoachWorkOut({Key? key}) : super(key: key);

  TextEditingController NumcarteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BuildBody(context),
    );
  }

  Widget BuildBody(context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/three.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: ReusPaddingAll(
            child: SafeArea(
              child: Column(children: [
                Container(
                  // color: Colors.amber,
                  height: 35,

                  child: Row(
                    children: [
                      CircleAvatar(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Cwhite,
                              size: 15,
                            )),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Entrainemets ",
                        style: TextStyle(
                          color: Cwhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FadeInDown(
                        child: Text(
                          "Cours spéciaux",
                          style: TextStyle(
                              color: Cwhite,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      const SizedBox(
                        height: 15.0,
                      ),

                      FadeInDown(
                        child: Text(
                          "Le changement commence des aujourd'hui !"
                              .toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Cwhite,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      const SizedBox(
                        height: 30.0,
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: FadeInLeft(
                              child: InkWell(
                                onTap: () {
                                  ShowModalButtomSheet(context);
                                  // print("par mois");
                                },
                                child: Container(
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(2.0),
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        color: Colors.grey.shade300,
                                        child: RotatedBox(
                                          quarterTurns: -1,
                                          child: Text(
                                            "Par mois".toUpperCase(),
                                            style: TextStyle(
                                                color: CBlack,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          "9,99 \$US",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: CBlack,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: FadeInRight(
                              child: InkWell(
                                onTap: () {
                                  ShowModalButtomSheet(context);
                                  //    print("par ans");
                                },
                                child: Container(
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(2.0),
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        color: Colors.grey.shade300,
                                        child: RotatedBox(
                                          quarterTurns: -1,
                                          child: Text(
                                            "Annuel".toUpperCase(),
                                            style: TextStyle(
                                                letterSpacing: 1.7,
                                                color: CBlack,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                          child: Column(
                                        children: [
                                          Text(
                                            "Essai gratuit de 7 jours",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: CBlack,
                                              fontSize: 19,
                                            ),
                                          ),
                                          Text(
                                            "39,99 \$US",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: CBlack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      // SizedBox(
                      //   child:
                      //   FadeInUp(child: reusAuthButtom(onPressed: () {}, text: "Continuer")),
                      // )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      );

  ShowModalButtomSheet(context) => showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  " Ajouter un mode de paiement à votre compte Google",
                  style: TextStyle(
                      color: CBlack, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "dako@gmail.com",
                  style: TextStyle(
                      color: CBlackFoncy,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Divider(
                  color: CBlackFoncy,
                  height: 2,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Ajouter un mode de paiement à votre compte Google pour commencer"
                  "votre essai gratuit.\n Vous ne serez pas facturé si vous annulerz l'essai",
                  style: TextStyle(
                      color: CBlackFoncy,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    ShowModalPaiments(context);
                    print("paimenet");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Icon(Icons.paid_rounded),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(
                            "Ajouter une carte de crédit ou de début",
                            style: TextStyle(color: CBlack, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      );

  ShowModalPaiments(context) => showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 12,
                        )),
                    Flexible(
                      child: Text(
                        " Ajouter une carte de crédit ou de bébit",
                        style: TextStyle(
                            color: CBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                reusTextFormFiled(
                    textStyle: Theme.of(context).textTheme.caption,
                    keyboardType: TextInputType.number,
                    validator: (val) {},
                    prefixIcon: Icon(Icons.money),
                    controller: NumcarteController,
                    hintText: "Numéro de carte"),
                Spacer(),
                reusAuthButtom(onPressed: () {}, text: "Enregistrer"),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          );
        },
      );
}
