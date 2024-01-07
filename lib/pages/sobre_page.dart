import 'package:app_esqueleto_responsivo_2/constants.dart';
import 'package:app_esqueleto_responsivo_2/layout/dimensions.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Scaffold(
        appBar:
            MediaQuery.of(context).size.width < tabletWidth ? myAppBar : null,
        body: Container(
          height: double.infinity,
          color: Colors.grey[500],
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Center(child: Text('SOBRE')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
