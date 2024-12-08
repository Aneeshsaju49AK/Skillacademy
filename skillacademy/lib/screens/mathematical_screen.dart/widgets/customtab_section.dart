import 'package:skillacademy/export/export.dart';

/// A custom widget that represents a tab in a `TabBar`.
///
/// This widget wraps the default `Tab` widget and applies custom styling, including 
/// a border, rounded corners, and a `CustomText` widget to display the tab's label. 
/// It is typically used inside a `TabBar` to define a tab with a specific visual appearance.
class CustomTab extends StatelessWidget {
  /// Creates a `CustomTab` widget.
  ///
  /// The [label] is the text displayed on the tab.
  const CustomTab({
    required this.label,
    super.key,
  });

  /// The text label for the tab.
  final String label;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: customBlack, width: 1), // Black border for the tab
          borderRadius: BorderRadius.circular(25), // Rounded corners for the tab
        ),
        height: 45, // Height of the tab
        alignment: Alignment.center, // Center the label within the tab
        child: CustomText(
          content: label, // The text content of the tab
          fontSize: 15, // Font size of the tab label
          fontWeight: FontWeight.w500, // Font weight of the tab label
        ),
      ),
    );
  }
}
