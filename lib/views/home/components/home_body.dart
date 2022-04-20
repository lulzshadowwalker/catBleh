part of '../../../helpers/lulz_imports.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 75.w, vertical: 25.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// * header
          Text(
            'Better safe than sorry',
            style: GoogleFonts.cookie(fontSize: 48),
          ),

          /// * body
          const HomeBodyInputFields()
        ],
      ),
    );
  }
}

