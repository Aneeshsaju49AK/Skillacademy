import 'package:skillacademy/export/export.dart';

/// A screen that displays a `BottomNavigationBar` with navigation options to switch between multiple pages.
///
/// This widget manages the navigation between different screens using a `ValueNotifier`
/// to track the selected index. The screens are displayed based on the selected index,
/// which is updated through the `ValueNotifier<int>` called `indexChangeNotifer`.
///
/// The available pages are:
/// - `MyHomePage()`
/// - `Locationpage()`
/// - `Calenderpage()`
/// - `Profilepage()`
class BottomNavigationoptionScreen extends StatelessWidget {
  BottomNavigationoptionScreen({super.key});

  /// A list of pages to navigate between based on the selected index.
  final _pages = [
    MyHomePage(), // Home page
    const Locationpage(), // Location page
    const Calenderpage(), // Calendar page
    const Profilepage(), // Profile page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable:
              indexChangeNotifer, // Listening to changes in indexChangeNotifer
          builder: (context, int index, _) {
            // Returns the page corresponding to the selected index
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar:
          const BottomNavigationWidget(), // Bottom navigation bar widget
    );
  }
}
