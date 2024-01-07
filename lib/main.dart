import 'package:app_esqueleto_responsivo_2/pages/config_page.dart';
import 'package:app_esqueleto_responsivo_2/pages/home_page.dart';
import 'package:app_esqueleto_responsivo_2/pages/sobre_page.dart';
import 'package:app_esqueleto_responsivo_2/layout/desktop_scaffold.dart';
import 'package:app_esqueleto_responsivo_2/layout/mobile_scaffold.dart';
import 'package:app_esqueleto_responsivo_2/layout/responsive_layout.dart';
import 'package:app_esqueleto_responsivo_2/layout/tablet_scaffold.dart';
import 'package:app_esqueleto_responsivo_2/providers/desktop_nav_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DesktopNavProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
      routes: {
        '/sobre': (context) => const AboutPage(),
        '/config': (context) => const ConfigPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
