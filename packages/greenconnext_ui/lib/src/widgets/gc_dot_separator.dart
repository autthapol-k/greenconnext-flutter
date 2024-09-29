import 'package:flutter/material.dart';
import 'package:greenconnext_ui/greenconnext_ui.dart';

class GcDotSeparator extends StatelessWidget {
  const GcDotSeparator({
    super.key,
    required this.size,
    this.color = GCColors.softGray,
  });

  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
