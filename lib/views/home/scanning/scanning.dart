part of '../../../helpers/lulz_imports.dart';

class DScanning extends StatelessWidget {
  const DScanning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Positioned(
        top: 0,
        child: MainHomeWindow(
          child: Center(
            child: CircularPercentIndicator(
              radius: 130.0,
              animation: true,
              animationDuration: 1200,
              lineWidth: 15.0,
              percent: 0.4,
              center: const Text('50%'),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.yellow,
              progressColor: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
