part of '../../../helpers/lulz_imports.dart';

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        15.horizontalSpace,

        /// Close button
        LulzWindowControlButton(
          color: LulzColors.closeWindow,
          onTap: appWindow.close,
        ),

        10.horizontalSpace,

        /// Minimize button
        LulzWindowControlButton(
          color: LulzColors.minimizeWindow,
          onTap: appWindow.minimize,
        ),
      ],
    );
  }
}
