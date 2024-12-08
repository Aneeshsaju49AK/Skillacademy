import 'package:skillacademy/export/export.dart';

/// A custom text field widget designed for search functionality.
///
/// This widget provides a styled `TextField` with rounded borders, 
/// a prefix search icon, and customizable background color. 
/// It is suitable for use cases like searching for teachers or other entities.
class CustomTextField extends StatelessWidget {
  /// Creates a `CustomTextField` widget.
  ///
  /// The widget is stateless and does not maintain any internal state.
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 4, bottom: 4),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Teacher...', // Placeholder text for the text field.
          hintStyle: const TextStyle(
            color: customGrey,
            fontSize: 14, // Font size for the placeholder text.
          ),
          prefixIcon: const Icon(
            Icons.search,
            size: 30, // Size of the search icon.
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners for the border.
            borderSide: BorderSide.none, // Removes the default border.
          ),
          fillColor: customColor, // Custom background color for the text field.
          filled: true, // Enables the background color fill.
        ),
      ),
    );
  }
}
