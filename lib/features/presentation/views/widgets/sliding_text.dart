import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slider,
  });

  final Animation<Offset> slider;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slider,
        builder: (context, _) {
          return SlideTransition(
            position: slider,
            child: const Text(
              "Read Free Box",
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
