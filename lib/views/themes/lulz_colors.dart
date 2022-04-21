part of '../../helpers/lulz_imports.dart';

class LulzColors {
  static Color colorFromHex(String hexColor, [String opacity = 'FF']) {
    /// #FFFFFF -> FFFFFF
    final String color = hexColor.replaceAll('#', '');

    /// FFFFFFFF -> 0xFFFFFFFF
    return Color(int.parse(opacity + color, radix: 16));
  }

  static final Color pink = colorFromHex('#F9B4BC');
  static final Color peachy = colorFromHex('#FAC9BB');
  static final Color red = colorFromHex('#F54A53');
  static final Color white = colorFromHex('#FFFFFF');
  static final Color black = colorFromHex('#000000');
  // static final Color blue = colorFromHex('#80DDE9');
  /// if I say it's blue then it's blue
  static final Color blue = colorFromHex('#FAC9BB');
  static final Color yellow = colorFromHex('#FDDA74');
  static final Color closeWindow = colorFromHex('#EC5C52');
  static final Color minimizeWindow = colorFromHex('#F0B130');
  static final Color textField = colorFromHex('#F1EFEF');
  static final Color booba = colorFromHex('#b00b69');
}
