import 'package:skillacademy/export/export.dart';

/// A customizable text widget for displaying styled text.
///
/// The `CustomText` widget allows customization of the displayed text's
/// content, color, font size, and font weight, providing flexibility
/// for various use cases in the UI.
class CustomText extends StatelessWidget {
  /// The text content to be displayed.
  final String content;

  /// The color of the text.
  /// Defaults to the theme's text color if not specified.
  final Color? color;

  /// The font size of the text.
  /// Defaults to the theme's text size if not specified.
  final double? fontSize;

  /// The weight of the text (e.g., bold, normal).
  /// Defaults to `FontWeight.normal` if not specified.
  final FontWeight? fontWeight;

  /// Creates a `CustomText` widget.
  ///
  /// [content] is required and specifies the text to display.
  /// [color], [fontSize], and [fontWeight] are optional and allow
  /// additional customization of the text style.
  const CustomText({
    super.key,
    required this.content,
    this.fontSize,
    this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        color: color, // Sets the text color, if provided.
        fontSize: fontSize, // Sets the font size, if provided.
        fontWeight: fontWeight, // Sets the font weight, if provided.
      ),
    );
  }
}
