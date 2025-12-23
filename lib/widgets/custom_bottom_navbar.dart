import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          /// CURVED BACKGROUND
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 80),
            painter: _CurvedNavPainter(),
          ),

          /// ICONS
          Positioned(
            bottom: 18,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _navItem(Icons.home, 0),
                _navItem(Icons.pie_chart, 1),
                const SizedBox(width: 60),
                _navItem(Icons.wallet, 2),
                _navItem(Icons.person, 3),
              ],
            ),
          ),

          /// CENTER BUTTON
          Positioned(
            top: -30,
            child: GestureDetector(
              onTap: () => onTap(4),
              child: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFFFE600),
                      Color(0xFFDB2519),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: const Icon(Icons.add, size: 32, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Icon(
        icon,
        size: 28,
        color: currentIndex == index
            ? Colors.white
            : Colors.white.withOpacity(0.6),
      ),
    );
  }
}

class _CurvedNavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    final gradient = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFFE600),
        Color(0xFFDB2519),
      ],
    );

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, 20);
    path.lineTo(size.width * 0.30, 20);

    path.quadraticBezierTo(
      size.width * 0.40,
      20,
      size.width * 0.42,
      0,
    );

    path.arcToPoint(
      Offset(size.width * 0.58, 0),
      radius: const Radius.circular(40),
      clockwise: false,
    );

    path.quadraticBezierTo(
      size.width * 0.60,
      20,
      size.width * 0.70,
      20,
    );

    path.lineTo(size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black, 12, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
