import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        height: double.infinity,
        color: Colors.grey[500],
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: Colors.grey[200],
                child: Center(child: Text('HOME')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
