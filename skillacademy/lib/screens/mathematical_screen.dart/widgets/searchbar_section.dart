import 'package:skillacademy/export/export.dart';

/// A widget representing the search bar section of the page.
///
/// This section is designed to display a search bar using the `CustomTextField` widget, 
/// wrapped within a responsive container (`CustomContainer`). It adjusts its size 
/// dynamically based on the screen dimensions provided.
class SearchBarSection extends StatelessWidget {
  /// Creates a `SearchBarSection` widget.
  ///
  /// The widget requires the width and height of the screen to adjust its layout responsively.
  const SearchBarSection({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  /// The width of the screen, used to calculate the responsive width.
  final double sizeWidth;

  /// The height of the screen, used to calculate the responsive height.
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      sizeWidth: sizeWidth,
      sizeHeight: sizeHeight,
      heightNeeded: 12, // Determines the height of the container relative to the screen.
      widthNeeded: 1,  // Determines the width of the container relative to the screen.
      child: const CustomTextField(), // Displays the search bar within the container.
    );
  }
}
