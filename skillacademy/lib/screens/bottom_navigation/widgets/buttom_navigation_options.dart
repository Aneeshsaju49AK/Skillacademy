import 'package:skillacademy/export/export.dart';

/// A widget that displays a customizable bottom navigation bar.
///
/// This widget listens to changes in the `indexChangeNotifer` to update the currently
/// selected index in the bottom navigation bar. When an item is tapped, the index is
/// updated and the appropriate page is displayed in the `BottomNavigationoptionScreen`.
/// 
/// The navigation bar contains four items, each represented by an icon. The icons are
/// loaded from asset images, and the selected/unselected item color is customized.
class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifer, // Listens for changes in the selected index
      builder: (context, int index, _) {
        return BottomNavigationBar(
          currentIndex: index, // Sets the current index of the selected item
          onTap: (value) {
            // Updates the selected index when an item is tapped
            indexChangeNotifer.value = value;
          },
          type: BottomNavigationBarType.fixed, // Fixed type for unscrollable items
          elevation: 0, // No elevation for the bottom navigation bar
          selectedItemColor: customBlack, // Color for the selected item
          unselectedItemColor: customGrey, // Color for unselected items
          selectedIconTheme: const IconThemeData(
            color: customBlack, // Icon color for selected items
          ),
          unselectedIconTheme: const IconThemeData(
            color: customGrey, // Icon color for unselected items
          ),
          showSelectedLabels: false, // Hides labels for selected items
          showUnselectedLabels: false, // Hides labels for unselected items
          items: [
            // Navigation item 1
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/image.png", // Asset image for the icon
                  height: 24, // Adjust size as needed
                  width: 24,
                ),
                label: ''), // No label for the item
            // Navigation item 2
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/image copy.png", // Asset image for the icon
                  height: 24,
                  width: 24,
                ),
                label: ''),
            // Navigation item 3
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/image copy 2.png", // Asset image for the icon
                  height: 24,
                  width: 24,
                ),
                label: ''),
            // Navigation item 4
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/image copy 3.png", // Asset image for the icon
                  height: 24,
                  width: 24,
                ),
                label: ''),
          ],
        );
      },
    );
  }
}
