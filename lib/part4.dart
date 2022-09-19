import 'package:flutter/material.dart';

class Part4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = 100.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipPath(
          clipper: BezierClipper(),
          child: Container(
            height: size,
            width: size,
            color: Colors.blue,
            child: Stack(
              children: [
                Positioned(
                  left: size * 0.3,
                  top: size * 0.2,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: size * 0.3,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final h = size.height;
    final w = size.width;
    var firstHeight = h * 0.2;
    var secondHeight = h * 0.3;
    var thirdHeight = h * 0.4;
    var forthHeight = h * 0.47;
    var smallHeightOffset = h * 0.03;
    var smallWidthOffset = w * 0.03;
    var firstWidth = w * 0.1;
    Path path = Path();
    path.lineTo(0, h - firstHeight);
    path.quadraticBezierTo(
      w * 0.4,
      h,
      w * 0.5,
      h - secondHeight,
    );
    path.quadraticBezierTo(
      w * 0.55,
      h - thirdHeight,
      w * 0.7,
      h - forthHeight + smallHeightOffset,
    );
    path.quadraticBezierTo(
      w * 0.9,
      h - forthHeight,
      w - smallWidthOffset,
      firstHeight,
    );
    path.quadraticBezierTo(
      w * 0.9,
      h - forthHeight,
      w - smallWidthOffset,
      firstHeight,
    );
    path.quadraticBezierTo(w, 0, w - firstWidth, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
