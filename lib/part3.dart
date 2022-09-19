import 'package:flutter/material.dart';

class Part3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: BezierClipper2(),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: double.infinity,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class BezierClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    final heightOffset = height * 0.2;
    Path path = Path();
    path.lineTo(
      0, // x value
      height - heightOffset, // y value
    );
    path.quadraticBezierTo(
      width * 0.25, // x1 (Control Point)
      height, // y1 (Control Point)
      width * 0.5, // x2 (End Point)
      height - heightOffset, // y2 (End Point)
    );
    path.quadraticBezierTo(
      width * 0.75, // P1(x1)
      height - (heightOffset * 2), // P1(y1)
      width, // P2(x2)
      height - heightOffset, // P2(y2)
    );
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
