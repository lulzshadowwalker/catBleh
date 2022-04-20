import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';

import 'helpers/lulz_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// [flutter_acrylic]
  await Window.initialize();

  runApp(const CatBleh());
}
 