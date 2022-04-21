part of '../../helpers/lulz_imports.dart';

class DScanning extends StatefulWidget {
  const DScanning({Key? key}) : super(key: key);

  @override
  State<DScanning> createState() => _DScanningState();
}

class _DScanningState extends State<DScanning> {
  double? _value = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      _value = lerpDouble(_value, 105, 0.005);
      _value ??= 0;
      _value! >= 100 ? _goToSuccessPage() : setState(() {});
    });
  }

  void _goToSuccessPage() {
    MaterialPageRoute _route =
        MaterialPageRoute(builder: ((context) => const DSuccess()));
    Navigator.pushReplacement(context, _route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainHomeWindow(
        child: Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 130.0,
                  // animation: true,
                  // animationDuration: 1200,
                  lineWidth: 15.0,
                  percent: (_value ?? 0) * 0.01 % 1,
                  center: Text(
                    '${(_value ?? 0 * 100).toInt()}%',
                    style: GoogleFonts.cookie(
                        fontSize: 48, color: Colors.grey.shade500),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: LulzColors.peachy.withOpacity(0.2),
                  progressColor: LulzColors.pink,
                ),
                const SizedBox(height: 38),
                Text(
                  'Scanning ${(_value ?? 0).toInt() * 649} hecker databases...',
                  style: GoogleFonts.cookie(
                    fontSize: 28,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
