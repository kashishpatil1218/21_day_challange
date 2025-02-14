import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Custom Design',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomPaint(
        painter: MyShape(),
        child: Container(),
      ),
    );
  }
}

class MyShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final path = Path();
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 5;
    paint.color = Colors.blueAccent;
    path.moveTo(0, size.height * 0.8);
    path.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.78,
      size.width * 0.3,
      size.height * 0.89,
    );
    path.quadraticBezierTo(
      size.width * 0.45,
      size.height * 0.95,
      size.width * 0.6,
      size.height * 0.85,
    );
    path.quadraticBezierTo(
      size.width * 1,
      size.height * 0.75,
      size.width * 0.85,
      size.height * 7,
    );

    path.quadraticBezierTo(
      size.width * 95,
      size.height * 0.65,
      size.width * 0.1,
      size.height * 0.68,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height*0.8);
    canvas.drawPath(path, paint);
    final paint1 = Paint();
    paint1.style=PaintingStyle.fill;
    paint1.color=Colors.blueAccent;
    canvas.drawPath(path,paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {

    return true;
  }
}
