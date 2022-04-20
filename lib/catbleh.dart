part of './helpers/lulz_imports.dart';

class CatBleh extends StatelessWidget {
  const CatBleh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: LulzConst.designSize,
      builder: (_) => MaterialApp(
        title: 'catBleh',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          colorScheme:
              ThemeData().colorScheme.copyWith(primary: LulzColors.blue),
          scaffoldBackgroundColor: Colors.transparent,
        ),
        home: const DHome(),
      ),
    );
  }
}
