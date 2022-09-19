import 'package:flutter/material.dart';

class Part2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: BezierClipper1(),
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

class BezierClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightOffset = height * 0.2;
    Path path = Path();
    path.lineTo(
      0, // x value
      height - heightOffset, // y value
    );
    path.quadraticBezierTo(
      width * 0.5, // x1 of P1
      height, // y1 of P1
      width, // x2 of P2
      height - heightOffset, // y2 of P2
    );
    path.lineTo(
      width, // x value
      0, // y value
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
