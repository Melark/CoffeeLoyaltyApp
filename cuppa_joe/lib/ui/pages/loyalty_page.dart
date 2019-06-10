import 'dart:ui';

import 'package:cuppa_joe/ui/animations/slide_in_animator.dart';
import 'package:cuppa_joe/ui/widgets/background_painter.dart';
import 'package:cuppa_joe/ui/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoyaltyPage extends StatelessWidget {
  const LoyaltyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff00162B)),
        body: BackgroundPainter(
            child: Container(
          child: Center(
              child: Column(
            children: <Widget>[
              Expanded(flex: 3, child: headerSection()),
              Expanded(
                flex: 5,
                child: coffeeBeansSection(),
              ),
              Expanded(
                flex: 1,
                child: submitButtonSection(),
              ),
            ],
          )),
        )));
  }

  Widget headerSection() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Container(
            height: 200,
            child: AppLogo(),
          ),
        ],
      ),
    );
  }

  Widget coffeeBeansSection() {
    return Container(
      padding: EdgeInsets.all(40),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SlideInAnimator(
                  child: coffeeBean(true),
                  delay: 200,
                ),
                SlideInAnimator(
                  child: coffeeBean(true),
                  delay: 200,
                ),
                SlideInAnimator(
                  child: coffeeBean(true),
                  delay: 200,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SlideInAnimator(
                  child: coffeeBean(true),
                  delay: 400,
                ),
                SlideInAnimator(
                  child: coffeeBean(true),
                  delay: 400,
                ),
                SlideInAnimator(
                  child: coffeeBean(true),
                  delay: 400,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SlideInAnimator(
                  child: coffeeBean(true),
                  delay: 600,
                ),
                SlideInAnimator(
                  child: coffeeBean(false),
                  delay: 600,
                ),
                SlideInAnimator(
                  child: coffeeBean(false),
                  delay: 600,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                    "You need 2 more Cuppas then your next one is FREE!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget coffeeBean(bool isClaimed) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Icon(
        FontAwesomeIcons.mugHot,
        size: 30,
        color: isClaimed ? Color(0xff36454f) : Colors.grey,
      ),
    );
  }

  Widget submitButtonSection() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            color: Color(0xff36454f),
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: Text(
                "Coffeee Time",
                style: TextStyle(color: Color.fromARGB(255, 237, 209, 146)),
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
