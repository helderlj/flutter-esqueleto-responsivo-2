import 'package:flutter/material.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: double.infinity,
        color: Colors.grey[100],
        child: ListView.builder(
          padding: EdgeInsets.all(2.0),
          scrollDirection: Axis.vertical,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(2.0),
              height: 120,
              color: Colors.grey[300],
            );
          },
        ),
      ),
    );
  }
}
