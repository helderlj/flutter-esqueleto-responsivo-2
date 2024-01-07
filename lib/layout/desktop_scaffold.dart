// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_esqueleto_responsivo_2/components/side_panel.dart';
import 'package:app_esqueleto_responsivo_2/constants.dart';
import 'package:app_esqueleto_responsivo_2/pages/config_page.dart';
import 'package:app_esqueleto_responsivo_2/pages/home_page.dart';
import 'package:app_esqueleto_responsivo_2/pages/sobre_page.dart';
import 'package:app_esqueleto_responsivo_2/providers/desktop_nav_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  final List<Widget> _pages = [
    const HomePage(),
    const ConfigPage(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = Provider.of<DesktopNavProvider>(context).selectedIndex;
    return Consumer<DesktopNavProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: myDefaultBackground,
        appBar: myAppBar,
        body: Container(
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey[300],
                width: 300,
                child: ListView(
                  children: [
                    DrawerHeader(
                      child: Center(
                        child: Text(
                          'M E U A P P',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('H O M E'),
                      onTap: () => value.changeIndex(0),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('C O N F I G'),
                      onTap: () => value.changeIndex(1),
                    ),
                    ListTile(
                      leading: Icon(Icons.info),
                      title: Text('S O B R E'),
                      onTap: () => value.changeIndex(2),
                    ),
                  ],
                ),
              ),
              _pages[_selectedIndex],
              SidePanel(),
            ],
          ),
        ),
      ),
    );
  }
}
