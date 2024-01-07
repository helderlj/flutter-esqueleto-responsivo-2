import 'package:flutter/material.dart';

class NavMenuDesk extends StatefulWidget {
  const NavMenuDesk({super.key});

  @override
  State<NavMenuDesk> createState() => _NavMenuDeskState();
}

class _NavMenuDeskState extends State<NavMenuDesk> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('C O N F I G'),
            onTap: () => Navigator.pushNamed(context, '/config'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('S O B R E'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
