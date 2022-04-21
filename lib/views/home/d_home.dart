part of '../../helpers/lulz_imports.dart';

class DHome extends StatefulWidget {
  const DHome({Key? key}) : super(key: key);

  @override
  State<DHome> createState() => _DHomeState();
}

class _DHomeState extends State<DHome> {
  final double _height = LulzConst.windowHeight;
  final double _width = LulzConst.windowWidth;
  final double _buttonHeight = 70;
  final double _buttonWidth = 342;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _setWindowEffect();

    /// [bitsdojo_window]
    doWhenWindowReady(() {
      Size initialSize = Size(_width, _height);

      appWindow
        ..minSize = initialSize
        ..maxSize = initialSize
        ..alignment = Alignment.center
        ..show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Form(
                  key: _formKey,
                  child: MainHomeWindow(
                    child: const HomeBody(),
                    cutout: _buttonHeight * 0.5,
                  ))),
          Positioned(
            bottom: 0,
            left: (_width - _buttonWidth) * 0.5,
            child: LulzButton(
              onTap: () => _onTap(context),
              text: 'Check now',
              width: _buttonWidth,
              height: _buttonHeight,
            ),
          )
        ],
      ),
    );
  }

  void _setWindowEffect() {
    Window.setEffect(effect: WindowEffect.transparent);
  }

  void _onTap(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      MaterialPageRoute _route =
          MaterialPageRoute(builder: ((context) => const DScanning()));
      Navigator.pushReplacement(context, _route);
    }
  }
}
