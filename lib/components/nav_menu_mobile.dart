import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
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
            onTap: () => Navigator.pushNamed(context, '/sobre'),
          ),
        ],
      ),
    );
  }
}
