// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../theme/theme_config.dart';

class AppLogoSmall extends StatelessWidget {
  const AppLogoSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      MdiIcons.googleAds,
      size: 24.0,
      color: primaryColor,
    );
  }
}
