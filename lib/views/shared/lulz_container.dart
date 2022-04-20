import 'package:flutter/material.dart';

import '../../helpers/lulz_imports.dart';

class LulzContainer extends StatelessWidget {
  /// Rounded edges and a little stroke
  const LulzContainer({
    Color? color,
    Widget? child,
    double? height,
    double? width,
    double? borderRadius,
    Key? key,
  })  : _child = child,
        _color = color,
        _height = height,
        _width = width,
        _borderRadius = borderRadius,
        super(key: key);

  final Widget? _child;
  final Color? _color;
  final double? _height, _width, _borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(_borderRadius ?? 10),
        border: Border.all(color: LulzColors.black, width: 2.0),
      ),
      child: _child,
    );
  }
}
