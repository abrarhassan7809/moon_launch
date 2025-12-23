import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final mqWidth = MediaQuery.of(context).size.width;
    final mqHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: mqWidth,
      height: 80,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(mqWidth, 80),
            painter: BNBCustomPainter(),
          ),

          Center(
            heightFactor: 0.6,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFFE600),
                    Color(0xFFDB2519),
                  ],
                ),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Icon(Icons.add, size: 22,),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home_outlined, size: 22,),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.wallet, size: 22,),
              ),
              Container(width: mqWidth*0.20,),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark, size: 22,),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person, size: 22,),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFFE600),
          Color(0xFFDB2519),
        ]
    ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);

    path.quadraticBezierTo(size.width*0.20, 0, size.width*0.35, 0);
    path.quadraticBezierTo(size.width*0.40, 0, size.width*0.40, 20);

    path.arcToPoint(
      Offset(size.width*0.60, 20),
      radius: Radius.circular(10.0),
      clockwise: false,
    );

    path.quadraticBezierTo(size.width*0.60, 0, size.width*0.65, 0);
    path.quadraticBezierTo(size.width*0.80, 0, size.width, 20);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
