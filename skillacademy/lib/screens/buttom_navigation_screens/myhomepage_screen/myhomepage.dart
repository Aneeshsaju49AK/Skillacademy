import 'package:skillacademy/export/export.dart';


class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

final  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.sizeOf(context).height;
    final sizeWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            HeaderWithIconHomepage(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
            SearchSectionHomePage(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
            CardViewSectionHomePage(sizeWidth: sizeWidth, sizeHeight: sizeHeight, pageController: _pageController),
            CategoriesSection(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
          ],
        ),
      ),
    );
  }
}


















