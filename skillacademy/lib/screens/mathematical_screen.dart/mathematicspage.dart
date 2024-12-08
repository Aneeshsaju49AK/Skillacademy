import 'package:skillacademy/export/export.dart';

/// A screen representing the Mathematics page in the application.
///
/// This page displays a header, a search bar, and a list view section,
/// arranged in a vertical column layout. The screen adapts its layout
/// dynamically based on the device's screen size.
class Mathematicspage extends StatelessWidget {
  /// Creates an instance of the Mathematics page.
  ///
  /// This page uses a [StatefulWidget] to manage its state dynamically.
  const Mathematicspage({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the screen height and width for responsive layout.
    final sizeHeight = MediaQuery.sizeOf(context).height;
    final sizeWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: customWhite, // Sets the background color of the page.
      body: SafeArea(
        child: Column(
          children: [
            // Displays the header section of the page.
            PageHeaderSection(sizeWidth: sizeWidth, sizeHeight: sizeHeight),

            // Displays the search bar section of the page.
            SearchBarSection(sizeWidth: sizeWidth, sizeHeight: sizeHeight),

            // Displays the list view section of the page.
            ListviewSection(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
          ],
        ),
      ),
    );
  }
}
