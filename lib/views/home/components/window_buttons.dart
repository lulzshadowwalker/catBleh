part of '../../../helpers/lulz_imports.dart';

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15),

        /// Close button
        LulzWindowControlButton(
          color: LulzColors.closeWindow,
          onTap: appWindow.close,
        ),

        const SizedBox(width: 10),

        /// Minimize button
        LulzWindowControlButton(
          color: LulzColors.minimizeWindow,
          onTap: appWindow.minimize,
        ),
      ],
    );
  }
}
