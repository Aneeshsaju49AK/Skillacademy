import 'package:skillacademy/export/export.dart';

/// A widget representing the header section of the page.
///
/// This section displays a back button (using `InkWell` with an icon) and a title ("Mathematics Teachers") 
/// in a row layout. It is wrapped inside a responsive container (`CustomContainer`) to adapt to the screen size.
class PageHeaderSection extends StatelessWidget {
  /// Creates a `PageHeaderSection` widget.
  ///
  /// This section is responsible for rendering the header of the page, which includes 
  /// a back button and a title. The size of the container is adjusted based on 
  /// the screen width and height.
  const PageHeaderSection({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  /// The width of the screen, used to calculate the responsive width of the container.
  final double sizeWidth;

  /// The height of the screen, used to calculate the responsive height of the container.
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      sizeWidth: sizeWidth,
      sizeHeight: sizeHeight,
      heightNeeded: 10,  // Specifies the height of the header container relative to the screen.
      widthNeeded: 1,    // Specifies the width of the header container relative to the screen.
      child: Row(
        children: [
          // Adds spacing on the left of the back button
          const CustomSizedBox(
            sizeWidth: 25,
          ),
          // Back button wrapped in InkWell to navigate back
          InkWell(
            onTap: () {
              navigationPopScreen(context); // Navigates to the previous screen
            },
            child: const Icon(
              Icons.keyboard_backspace,  // Back icon
              size: 30,
            ),
          ),
          // Adds spacing between the back button and the title
          const CustomSizedBox(
            sizeWidth: 30,
          ),
          // Title text displayed in the header
          const CustomText(
            content: "Mathematics Teachers",  // Title text
            fontSize: 20,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}
