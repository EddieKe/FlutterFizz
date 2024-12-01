import 'package:flutter/material.dart';

class AnimatedCircularProgressWithPercentage extends StatefulWidget {
  final double progress; // Final progress value between 0 and 1

  const AnimatedCircularProgressWithPercentage({super.key, required this.progress});

  @override
  _AnimatedCircularProgressWithPercentageState createState() =>
      _AnimatedCircularProgressWithPercentageState();
}

class _AnimatedCircularProgressWithPercentageState
    extends State<AnimatedCircularProgressWithPercentage> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: widget.progress),
      duration: const Duration(seconds: 2),
      builder: (context, value, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              value: value,
              backgroundColor: Colors.grey.shade300,
              color: Colors.green,
              strokeWidth: 6.0,
            ),
            Text(
              "${(value * 100).toInt()}%",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
      },
    );
  }
}
