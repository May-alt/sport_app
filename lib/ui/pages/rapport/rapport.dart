import 'package:flutter/material.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/ui/pages/rapport/components/build_header_rapport.dart';
import 'package:sport_app/ui/pages/rapport/components/build_body_rapports.dart';

class RapportsViews extends StatefulWidget {
  const RapportsViews({Key? key}) : super(key: key);

  @override
  State<RapportsViews> createState() => _RapportsViewsState();
}

class _RapportsViewsState extends State<RapportsViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
            child: Column(
          children: [
            BuildHeaderRapprts(),
            BuildBodyRapportsViews(),
          ],
        )),
      ),
    );
  }
}
