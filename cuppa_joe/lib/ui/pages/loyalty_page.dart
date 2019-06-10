import 'dart:ui';

import 'package:cuppa_joe/ui/animations/slide_in_animator.dart';
import 'package:cuppa_joe/ui/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoyaltyPage extends StatelessWidget {
  const LoyaltyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Container(
          child: Center(
              child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: headerSection()
              ),
              Expanded(
                flex: 3,
                child: coffeeBeansSection(),
              ),
              Expanded(
                flex: 1,
                child: submitButtonSection(),
              ),
            ],
          )),
        ));
  }


  Widget headerSection() {
    return Container(
      child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Card(
                      child: Container(
                        height: 200,
                        child: AppLogo(),
                      ),
                    ),
                  ],
                ),
    );
  }

  Widget coffeeBeansSection() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text("You need 2 more Cuppas then your next one is FREE!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 20,
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
          )
        ],
      ),
    );
  }

  Widget coffeeBean(bool isClaimed) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Icon(
        FontAwesomeIcons.mugHot,
        size: 30,
        color: isClaimed ? Colors.white : Colors.grey,
      ),
    );
  }

  Widget submitButtonSection() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            child: Text("Coffeee Papi"),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
