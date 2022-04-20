part of '../../helpers/lulz_imports.dart';

class DHome extends StatefulWidget {
  const DHome({Key? key}) : super(key: key);

  @override
  State<DHome> createState() => _DHomeState();
}

class _DHomeState extends State<DHome> {
  final double _height = LulzConst.windowHeight.h;
  final double _width = LulzConst.windowWidth.w;
  final double _buttonHeight = 70.h;
  final double _buttonWidth = 342.w;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _setWindowEffect();

    /// [bitsdojo_window]
    doWhenWindowReady(() {
      /// this doesn't make sense does it :D it works who cares
      ///  basically, the actual perceived window [LulzContainer] in the [Home]
      ///  widget gets resized dynamically properly
      Size initialSize = Size(_width, _height);

      appWindow
        ..minSize = initialSize
        ..maxSize = initialSize
        ..size = initialSize
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
                  child: const MainHomeWindow(
                    child: HomeBody(),
                  ))),
          Positioned(
            bottom: 0,
            left: (_width - _buttonWidth) * 0.5,
            child: LulzButton(
              onTap: () => _onTap(context),
              text: 'Check now',
              textWidth: 112.w,
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
      Navigator.of(context).push(_route);
    }
  }
}
