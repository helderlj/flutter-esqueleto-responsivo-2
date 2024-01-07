import 'package:app_esqueleto_responsivo_2/constants.dart';
import 'package:app_esqueleto_responsivo_2/components/nav_menu_mobile.dart';
import 'package:app_esqueleto_responsivo_2/pages/home_page.dart';
import 'package:flutter/material.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: NavMenu(),
      body: HomePage(),
    );
  }
}
