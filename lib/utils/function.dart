import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sport_app/utils/styles/colors.dart';

void CreateAlertDialog(
  context, {
  required String title,
  required void Function()? OkOnPressed,
  required void Function()? AnnulerOnPressed,
}) =>
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          elevation: 10.0,
          content: Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                    color: CBlack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: OkOnPressed,
                      child: Text(
                        "Ok",
                        style: TextStyle(
                          letterSpacing: 1.4,
                          fontSize: 16,
                          color: CBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: AnnulerOnPressed,
                      child: Text(
                        "Annuler",
                        style: TextStyle(
                          letterSpacing: 1.4,
                          fontSize: 16,
                          color: CBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );

ShowProgressIdicator(context) => showDialog(
      context: context,
      builder: (context) {
        return Center(
            child: CircularProgressIndicator(
          backgroundColor: Colors.grey,
          valueColor: AlwaysStoppedAnimation(Colors.purple),
          strokeWidth: 08,
        ));
      },
    );

tostShow({
  required String msg,
  required TostOptionState state,
}) =>
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 6,
        backgroundColor: showsTostBackColor(state),
        textColor: Colors.white,
        fontSize: 16.0);

//emun plusieur Options

enum TostOptionState { SUCCESS, ERROR, WARNING }

Color? showsTostBackColor(TostOptionState state) {
  Color? color;
  switch (state) {
    case TostOptionState.SUCCESS:
      color = Colors.green;
      break;
    case TostOptionState.WARNING:
      color = Colors.amber;
      break;
    case TostOptionState.ERROR:
      color = Colors.red;
      break;
  }
  return color;
}
