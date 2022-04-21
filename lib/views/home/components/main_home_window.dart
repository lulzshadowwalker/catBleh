part of '../../../helpers/lulz_imports.dart';

class MainHomeWindow extends StatelessWidget {
  const MainHomeWindow({
    Key? key,
    Widget? child,
    double cutout = 0,
  })  : _child = child,
        _cutout = cutout,
        super(key: key);

  final Widget? _child;

  /// when e.g. you wanna stack another widget like a button to cut through the window as in [DHome]
  final double _cutout;
  @override
  Widget build(BuildContext context) {
    return LulzContainer(

        /// * The actual perceived window
        /// *  This is fucked up :D by using [part] and [part of] all files within
        /// *  can access each others private members which is... Yes :D idc about this project
        height: _DHomeState()._height - _cutout,
        width: _DHomeState()._width,
        color: LulzColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// * title bar
            WindowTitleBarBox(
              child: Row(
                children: [
                  const WindowButtons(),
                  Expanded(child: MoveWindow()),
                ],
              ),
            ),
            Divider(thickness: 2, color: LulzColors.black, height: 5),
            _child ?? Container()
          ],
        ));
  }
}
