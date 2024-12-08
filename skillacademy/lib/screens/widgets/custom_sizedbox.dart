import 'package:skillacademy/export/export.dart';

/// A customizable `SizedBox` widget for adding spacing in the UI.
///
/// The `CustomSizedBox` widget provides a flexible way to define spacing
/// in terms of width and height. It is useful for creating consistent layouts
/// by controlling empty space between widgets.
class CustomSizedBox extends StatelessWidget {
  /// The width of the `SizedBox`.
  ///
  /// Defaults to `0` if not specified.
  final double? sizeWidth;

  /// The height of the `SizedBox`.
  ///
  /// Defaults to `0` if not specified.
  final double? sizeHeight;

  /// Creates a `CustomSizedBox` widget.
  ///
  /// [sizeWidth] and [sizeHeight] are optional parameters to set the width and
  /// height of the box. If either is not provided, it defaults to `0`.
  const CustomSizedBox({
    super.key,
    this.sizeWidth,
    this.sizeHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeWidth ?? 0, // Sets the width of the box, defaults to 0.
      height: sizeHeight ?? 0, // Sets the height of the box, defaults to 0.
    );
  }
}
