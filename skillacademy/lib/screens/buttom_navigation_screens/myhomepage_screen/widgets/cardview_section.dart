import 'package:skillacademy/export/export.dart';

class CardViewSectionHomePage extends StatelessWidget {
  const CardViewSectionHomePage({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
    required PageController pageController,
  }) : _pageController = pageController;

  final double sizeWidth;
  final double sizeHeight;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      sizeWidth: sizeWidth,
      sizeHeight: sizeHeight,
      heightNeeded: 3.9,
      widthNeeded: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: sizeWidth / 1.1,
            height: sizeHeight / 4.5,
            decoration: BoxDecoration(
                color: customPurple,
                borderRadius: BorderRadius.circular(14)),
            child: Stack(
              children: [
               const Positioned(
                  top: -30,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: translucentGrey,
                  ),
                ),
               const Positioned(
                  top: 150,
                  left: 70,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: translucentGrey,
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    const  CustomText(
                        content:
                            "We have got you\ncovered with our\nTop Teachers",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      Image.asset(
                        "assets/images/image copy 19.png",
                        scale: 2.3,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 120,
                  child: SizedBox(
                    width: sizeWidth / 3,
                    height: sizeHeight / 30,
                    child: SmoothPageIndicator(
                      controller:
                          _pageController, // Link to the PageView
                      count: 4, // Number of pages
                      effect:const WormEffect(
                        dotWidth: 15,
                        dotHeight: 5,
                        spacing: 8,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}