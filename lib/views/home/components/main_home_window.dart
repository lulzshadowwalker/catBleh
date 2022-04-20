part of '../../../helpers/lulz_imports.dart';

class MainHomeWindow extends StatelessWidget {
  const MainHomeWindow({
    Key? key,
    GlobalKey<FormState>? formKey,
    Widget? child,
  })  : _formKey = formKey,
        _child = child,
        super(key: key);

  final GlobalKey<FormState>? _formKey;
  final Widget? _child;
  @override
  Widget build(BuildContext context) {
    return LulzContainer(

        /// * The actual perceived window
        /// *  This is fucked up :D by using [part] and [part of] all files within
        /// *  can access each others private members which is... Yes :D idc about this project
        height: _DHomeState()._height - _DHomeState()._buttonHeight * 0.5,
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
                  MoveWindow(),
                ],
              ),
            ),
            Divider(thickness: 2, color: LulzColors.black, height: 5),
            _child ?? Container()
          ],
        ));
  }
}
