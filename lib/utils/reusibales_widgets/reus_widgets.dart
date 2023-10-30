import 'package:flutter/material.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:animate_do/animate_do.dart';

NavToAndRemove(context, Widget) => Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) {
          return Widget;
        },
      ),
      (route) => false,
    );

NavAndReplacement(context, Widget) =>
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return Widget;
    }));

NavToAotherPage(context, Widget) => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Widget;
        },
      ),
    );

Widget ReusPaddingAll({
  required Widget? child,
}) =>
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: child,
    );

Widget reusAuthButtom({
  required void Function()? onPressed,
  required String text,
}) =>
    MaterialButton(
      onPressed: onPressed,
      height: 45,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Cpurple,
      child: Text(
        text,
        style:
            TextStyle(color: Cwhite, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );

Widget reusTextFormFiled({
  required TextInputType? keyboardType,
  required String? Function(String?)? validator,
  required Widget? prefixIcon,
  IconData? sufixicon,
  Color? iconsColor,
  void Function()? SufixPresVisibal,
  required TextEditingController? controller,
  required String? hintText,
  bool obscureText = false,
  required TextStyle? textStyle,
}) =>
    TextFormField(
      // controller: ,
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      style: textStyle,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: IconButton(
          onPressed: SufixPresVisibal,
          icon: Icon(
            sufixicon,
            color: iconsColor,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
        hintMaxLines: 2,
        // contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );

Widget reusTexyRowAuthNav({
  context,
  required String text,
  required String btntext,
  required TextStyle? textStyle,
  required void Function()? onPressed,
}) =>
    FadeInUp(
      delay: Duration(milliseconds: 800),
      duration: Duration(milliseconds: 1500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: textStyle,
          ),
          TextButton(
              onPressed: onPressed,
              child: Text(
                btntext,
                style: TextStyle(
                    color: Cpurple, fontSize: 18, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );

// reusibale widget for Setting screen

Widget reusCard({
  IconData? icon,
  required void Function()? onTap,
  required String text,
}) =>
    Card(
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: Colors.purpleAccent,
          child: Icon(
            icon,
            color: Cwhite,
          ),
        ),
        title: Text(
          text,
          style: TextStyle(
            color: CBlack,
            fontSize: 16,
          ),
        ),
      ),
    );

//////////////////
CreateModelAlert(
  context, {
  required AssetImage assetImage,
  required String text,
}) =>
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, //vertical
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: assetImage,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(
                          color: CBlackFoncy,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, //vertical
                children: [
                  TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        "Back".toUpperCase(),
                        style: TextStyle(color: CBlack),
                      )),
                  TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        "Next".toUpperCase(),
                        style: TextStyle(color: CBlack),
                      )),
                ],
              ),
            ],
          ),
        );
      },
    );
