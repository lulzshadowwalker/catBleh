part of '../../../helpers/lulz_imports.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// * header
          Text(
            'Better safe than sorry',
            style: GoogleFonts.cookie(fontSize: 48),
          ),
          const SizedBox(height: 20),

          /// * body
          const HomeBodyInputFields()
        ],
      ),
    );
  }
}
