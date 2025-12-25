import 'package:flutter/material.dart';

class WalletChart extends StatefulWidget {
  const WalletChart({super.key});

  @override
  State<WalletChart> createState() => _WalletChartState();
}

class _WalletChartState extends State<WalletChart> {
  double _scale = 1.0; // horizontal zoom
  double _lastScale = 1.0;

  double _verticalZoom = 1.0; // vertical zoom
  double _lastVerticalZoom = 1.0;

  double? _touchX; // for movable indicator

  final List<double> _values = [
    3.2, 3.1, 3.3, 3.6, 3.4, 3.8, 4.1, 4.0, 4.2, 4.5,
    4.7, 4.9, 5.0, 5.3, 5.1, 5.4, 5.7, 5.9, 6.1, 6.3,
    6.2, 6.5, 6.7, 6.9, 7.1, 7.3, 7.2, 7.5, 7.7, 7.9,
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final visibleValues = _getVisibleValues();
        return GestureDetector(
          onScaleStart: (_) {
            _lastScale = _scale;
            _lastVerticalZoom = _verticalZoom;
          },
          onScaleUpdate: (details) {
            setState(() {
              // Zooming
              _scale = (_lastScale * details.scale).clamp(1.0, 4.0);
              _verticalZoom = (_lastVerticalZoom * details.scale).clamp(1.0, 4.0);

              // Update indicator position based on touch
              _touchX = details.localFocalPoint.dx;
            });
          },
          child: CustomPaint(
            size: Size(constraints.maxWidth, constraints.maxHeight),
            painter: _WalletChartPainter(
              values: visibleValues,
              verticalZoom: _verticalZoom,
              scale: _scale,
              touchX: _touchX,
            ),
          ),
        );
      },
    );
  }

  List<double> _getVisibleValues() {
    final int total = _values.length;
    final double visibleRatio = 1 / _scale;
    final int visibleCount = (total * visibleRatio).clamp(10, total).toInt();
    return _values.sublist(total - visibleCount, total);
  }
}

class _WalletChartPainter extends CustomPainter {
  final List<double> values;
  final double verticalZoom;
  final double scale;
  final double? touchX;

  _WalletChartPainter({
    required this.values,
    required this.verticalZoom,
    required this.scale,
    this.touchX,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (values.length < 2) return;

    // ---- MIN/MAX
    double minValue = values.reduce((a, b) => a < b ? a : b);
    double maxValue = values.reduce((a, b) => a > b ? a : b);

    final center = (minValue + maxValue) / 2;
    final baseRange = (maxValue - minValue).abs();
    final zoomedRange = baseRange / (verticalZoom == 0 ? 1 : verticalZoom);

    minValue = center - zoomedRange / 2;
    maxValue = center + zoomedRange / 2;
    final range = (maxValue - minValue == 0) ? 1 : maxValue - minValue;

    // ---- PADDING
    const double topPadding = 20;
    const double bottomPadding = 24;
    final usableHeight = size.height - topPadding - bottomPadding;

    // ---- POINTS
    final List<Offset> points = [];
    final double spacing = size.width / ((values.length - 1) * scale);

    for (int i = 0; i < values.length; i++) {
      final x = i * spacing;
      final normalized = ((values[i] - minValue) / range).clamp(0.0, 1.0);
      final y = size.height - bottomPadding - (normalized * usableHeight);
      points.add(Offset(x, y));
    }

    // ---- GRID
    final gridPaint = Paint()
      ..color = Colors.blue.withOpacity(0.25)
      ..strokeWidth = 1;

    final int gridLines = (4 + (verticalZoom * 2)).round().clamp(4, 10);

    for (int i = 0; i <= gridLines; i++) {
      final double y = topPadding + (usableHeight / gridLines) * i;
      _drawDashedLine(canvas, Offset(0, y), Offset(size.width, y), gridPaint);
    }

    // ---- LINE
    final path = Path()..moveTo(points.first.dx, points.first.dy);
    for (int i = 1; i < points.length; i++) {
      path.lineTo(points[i].dx, points[i].dy);
    }

    final linePaint = Paint()
      ..shader = const LinearGradient(
        colors: [Colors.lightBlueAccent, Colors.blue],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, linePaint);

    // ---- FILL
    final fillPath = Path.from(path)
      ..lineTo(points.last.dx, size.height)
      ..lineTo(points.first.dx, size.height)
      ..close();

    canvas.drawPath(
      fillPath,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue.withOpacity(0.35), Colors.transparent],
        ).createShader(Rect.fromLTWH(0, 0, size.width, size.height)),
    );

    // ---- INDICATOR
    Offset indicatorPoint;
    String valueText;

    if (touchX != null) {
      int closestIndex = 0;
      double minDistance = double.infinity;
      for (int i = 0; i < points.length; i++) {
        double distance = (points[i].dx - touchX!).abs();
        if (distance < minDistance) {
          minDistance = distance;
          closestIndex = i;
        }
      }
      indicatorPoint = points[closestIndex];
      valueText = '\$${values[closestIndex].toStringAsFixed(2)}';
    } else {
      int focusIndex = (points.length / 2).round();
      indicatorPoint = points[focusIndex];
      valueText = '\$${values[focusIndex].toStringAsFixed(2)}';
    }

    canvas.drawCircle(indicatorPoint, 5, Paint()..color = Colors.white);
    canvas.drawCircle(indicatorPoint, 9, Paint()..color = Colors.blue.withOpacity(0.4));

    // ---- VALUE BUBBLE
    final textPainter = TextPainter(
      text: TextSpan(
        text: valueText,
        style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    final bubblePadding = 6.0;
    final bubbleWidth = textPainter.width + bubblePadding * 2;
    final bubbleHeight = textPainter.height + bubblePadding;

    final bubbleOffset = Offset(
      (indicatorPoint.dx - bubbleWidth / 2).clamp(4, size.width - bubbleWidth - 4),
      (indicatorPoint.dy - bubbleHeight - 8).clamp(4, size.height),
    );

    final bubbleRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(bubbleOffset.dx, bubbleOffset.dy, bubbleWidth, bubbleHeight),
      const Radius.circular(14),
    );

    canvas.drawRRect(bubbleRect, Paint()..color = Colors.white);
    textPainter.paint(canvas, Offset(bubbleRect.left + bubblePadding, bubbleRect.top + bubblePadding / 2));
  }

  void _drawDashedLine(Canvas canvas, Offset start, Offset end, Paint paint) {
    const dashWidth = 6;
    const dashSpace = 4;
    double x = start.dx;
    while (x < end.dx) {
      canvas.drawLine(Offset(x, start.dy), Offset(x + dashWidth, start.dy), paint);
      x += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
