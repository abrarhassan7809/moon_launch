import 'package:flutter/material.dart';
import 'package:moon_launch/views/activity_screen.dart';
import 'notifiers.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mqSize = MediaQuery.of(context).size;

    return SafeArea(
      child: SizedBox(
        width: mqSize.width,
        height: 90,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Custom Painted Background
            CustomPaint(
              size: Size(mqSize.width, 80),
              painter: BNBCustomPainter(),
            ),

            // Center Button
            Positioned(
              top: -20,
              left: mqSize.width / 2 - 35,
              child: ValueListenableBuilder<int>(
                valueListenable: selectedPageNotifier,
                builder: (context, selectedIndex, _) {
                  return Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFFE600), Color(0xFFDB2519)],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFFFE600).withOpacity(0.4),
                          blurRadius: 12,
                          spreadRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: _navIcon(
                      index: 2,
                      selectedIndex: selectedIndex,
                      iconPath: 'assets/images/plus_icon.png',
                    ),
                  );
                },
              ),
            ),

            // Bottom Icons
            ValueListenableBuilder<int>(
              valueListenable: selectedPageNotifier,
              builder: (context, selectedIndex, _) {
                return Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _navIcon(
                        index: 0,
                        selectedIndex: selectedIndex,
                        iconPath: 'assets/images/home_icon.png',
                      ),
                      _navIcon(
                        index: 1,
                        selectedIndex: selectedIndex,
                        iconPath: 'assets/images/wallet_icon.png',
                      ),
                      SizedBox(width: mqSize.width*0.20),
                      _navIcon(
                        index: 3,
                        selectedIndex: selectedIndex,
                        iconPath: 'assets/images/ticket_icon.png',
                      ),
                      _navIcon(
                        index: 4,
                        selectedIndex: selectedIndex,
                        iconPath: 'assets/images/profile_icon.png',
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _navIcon({
    required int index,
    required int selectedIndex,
    required String iconPath,
  }) {
    final bool isSelected = index == selectedIndex;

    return IconButton(
      onPressed: () {
        selectedPageNotifier.value = index;
      },
      icon: Image.asset(
        iconPath,
        width: 28,
        height: 28,
        color: isSelected ? Colors.white : Colors.white54,
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFFE600),
          Color(0xFFDB2519),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20);

    // Left curve
    path.quadraticBezierTo(size.width * 0.18, 0, size.width * 0.30, 0); // top left
    path.quadraticBezierTo(size.width * 0.35, 0, size.width * 0.38, 35);

    // Center dip (wide U-shape)
    path.cubicTo(
      size.width * 0.38, 35,   // control point 1 (farther left)
      size.width * 0.42, 70,   // control point 2 (bottom left)
      size.width * 0.50, 68,   // center bottom point of dip
    );

    path.cubicTo(
      size.width * 0.58, 70,   // control point 3 (bottom right)
      size.width * 0.62, 35,   // control point 4 (farther right)
      size.width * 0.64, 20,   // end of center curve
    );

    // Right curve
    path.quadraticBezierTo(size.width * 0.67, 0, size.width * 0.72, 0);
    path.quadraticBezierTo(size.width * 0.82, 0, size.width, 20);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
