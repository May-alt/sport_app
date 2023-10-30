import 'package:flutter/material.dart';
import 'package:sport_app/utils/function.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/ui/pages/home/work_corps_complet/components/build_header.dart';
import 'package:sport_app/ui/pages/home/work_corps_complet/components/build_body.dart';

class CorpsCompletsWorkOut extends StatelessWidget {
  const CorpsCompletsWorkOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          BuildHeaderWorkCorps(),
          Expanded(
            child: BuildBodyWorkCorps(),
          ),
        ],
      )),
    );
  }
}
