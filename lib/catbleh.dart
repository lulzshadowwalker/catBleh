part of './helpers/lulz_imports.dart';

class CatBleh extends StatelessWidget {
  const CatBleh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'catBleh',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
