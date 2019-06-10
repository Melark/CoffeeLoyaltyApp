import 'package:flutter/material.dart';

class BackgroundPainter extends StatelessWidget {
  Widget child;

  BackgroundPainter({this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TopWavePainter(),
      child: child,
    );
  }
}

class TopWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Gradient navyGradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      stops: [0.01, 0.02, 0.3, 0.5, 0.7],
      colors: [
        Color(0xff001F3D),
        Color(0xff001F3D),
        Color(0xff001a33),
        Color(0xff001a33),
        Color(0xff001a33),
      ],
    );


    Gradient gradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      stops: [0.01, 0.02, 0.3, 0.5, 0.7],
      colors: [
        Color(0xed092A4C),
        Color(0xee092A4C),
        Color(0xff092A4C),
        Color(0xff092A4C),
        Color(0xff092A4C),
      ],
    );


    Rect lowestBlueRect = Rect.fromLTRB(0, 0, size.width * 0.5, size.height / 2);

    Paint lowestBluePaint = Paint()..shader = gradient.createShader(lowestBlueRect);

    Path lowestBluePath = Path();
    lowestBluePath.lineTo(0,4.5*  size.height / 12);
    lowestBluePath.cubicTo(size.width / 2, size.height / 4, size.width / 2.2,
        size.height / 2, size.width, 2.5 * size.height / 6);
    lowestBluePath.lineTo(size.width, 0);
    lowestBluePath.close();

    canvas.drawShadow(lowestBluePath, Colors.black, 2.0, false);
    canvas.drawPath(lowestBluePath, lowestBluePaint);

    Paint yellowFlowPaint = Paint( 
    )..color = Color.fromARGB(255, 237, 209,146);

    Path yellowFlowPath = Path();
    yellowFlowPath.lineTo(0, 4 * size.height / 12);
    yellowFlowPath.cubicTo(size.width / 2, size.height / 4, size.width / 2.2,
        size.height / 2, size.width, 2.5 * size.height / 6);
    yellowFlowPath.lineTo(size.width, 0);
    yellowFlowPath.close();

    canvas.drawShadow(yellowFlowPath, Colors.black, 2.0, false);
    canvas.drawPath(yellowFlowPath, yellowFlowPaint);

    Rect navyRect = Rect.fromLTRB(0, 0, size.width * 0.5, size.height / 2);

    Paint navyPaint = Paint()..shader = navyGradient.createShader(navyRect);

    Path navyPath = Path();
    navyPath.lineTo(0, 3.5*  size.height / 12);
    navyPath.cubicTo(size.width / 2, size.height / 4, size.width / 2.2,
        size.height / 2, size.width, 2.5 * size.height / 6);
    navyPath.lineTo(size.width, 0);
    navyPath.close();

    canvas.drawShadow(navyPath, Colors.black, 2.0, false);
    canvas.drawPath(navyPath, navyPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
