import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';

import 'helpers/lulz_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// flutter_acrylic
  await Window.initialize();

  runApp(const CatBleh());

  /// bitsdojo_window
  doWhenWindowReady(() {
    const initialSize = Size(600, 450);
    appWindow
      ..minSize = initialSize
      ..size = initialSize
      ..alignment = Alignment.center
      ..show();
  });
}
