part of '../../helpers/lulz_imports.dart';

class DSuccess extends StatelessWidget {
  const DSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainHomeWindow(
        child: Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(LulzImages.bongoTap, scale: 0.85),
                const SizedBox(height: 38),
                Text(
                  'Luckily, your card number did not show up in any hecker man\'s database around the world!',
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
