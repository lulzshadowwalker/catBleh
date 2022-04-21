import 'lulz_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helpers/lulz_imports.dart';

class LulzButton extends StatelessWidget {
  const LulzButton({
    required String text,
    double? height,
    double? width,
    required VoidCallback onTap,
    Key? key,
  })  : _text = text,
        _width = width,
        _height = height,
        _onTap = onTap,
        super(key: key);

  final double _borderRadius = 25;
  final String _text;
  final double? _height;
  final double? _width;
  final VoidCallback _onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: _onTap,
        borderRadius: BorderRadius.circular(_borderRadius),
        child: LulzContainer(
            borderRadius: _borderRadius,
            alignment: Alignment.center,
            child: Text(
              _text,
              style: GoogleFonts.cookie(fontSize: 36),
              textAlign: TextAlign.center,
            ),
            width: _width,
            height: _height,
            color: LulzColors.blue));
  }
}
