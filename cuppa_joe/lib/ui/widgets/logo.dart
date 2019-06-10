import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: new BoxDecoration(
          image: new DecorationImage(
            
            image:
                AssetImage('assets/images/logo_transparent.png'),
            fit: BoxFit.fitHeight,
          ),
        )
    );
  }
}