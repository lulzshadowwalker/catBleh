import 'package:catbleh/views/shared/lulz_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helpers/lulz_imports.dart';
import 'lulz_text.dart';

class LulzButton extends StatelessWidget {
  const LulzButton({
    required String text,
    double? height,
    double? width,
    required double textWidth,
    required VoidCallback onTap,
    Key? key,
  })  : _text = text,
        _width = width,
        _height = height,
        _textWidth = textWidth,
        _onTap = onTap,
        super(key: key);

  final double _borderRadius = 50;
  final String _text;
  final double? _height;
  final double? _width;
  final double _textWidth;
  final VoidCallback _onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: _onTap,
        borderRadius: BorderRadius.circular(_borderRadius.r),
        child: LulzContainer(
            borderRadius: _borderRadius.r,
            child: FittedBox(
              child: LulzText(
                text: _text,
                textWidth: _textWidth,
                style: GoogleFonts.cookie(fontSize: 36.sm),
                textAlign: TextAlign.center,
              ),
            ),
            width: _width,
            height: _height,
            color: LulzColors.blue));
  }
}

