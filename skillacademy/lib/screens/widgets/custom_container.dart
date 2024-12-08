import 'package:skillacademy/export/export.dart';

/// A customizable container widget with dynamic sizing and optional child.
///
/// The `CustomContainer` widget allows for flexible design by dynamically
/// calculating its width and height based on the provided `sizeWidth` and
/// `sizeHeight` values divided by `widthNeeded` and `heightNeeded`.
/// It also supports an optional child widget and background color.
class CustomContainer extends StatelessWidget {
  /// The total width available for the container.
  final double sizeWidth;

  /// The total height available for the container.
  final double sizeHeight;

  /// The divisor used to calculate the container's width.
  final double widthNeeded;

  /// The divisor used to calculate the container's height.
  final double heightNeeded;

  /// The background color of the container.
  ///
  /// Defaults to `null`, resulting in no background color.
  final Color? color;

  /// The child widget to be displayed inside the container.
  ///
  /// Defaults to `null`, resulting in an empty container.
  final Widget? child;

  /// Creates a `CustomContainer` widget.
  ///
  /// [sizeWidth], [sizeHeight], [widthNeeded], and [heightNeeded] are required
  /// to calculate the container's dimensions. The optional [color] sets the
  /// background color, and [child] allows for embedding a widget inside.
  const CustomContainer({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
    required this.widthNeeded,
    required this.heightNeeded,
    this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color, // Sets the background color of the container.
      width: sizeWidth / widthNeeded, // Dynamically calculates the container's width.
      height: sizeHeight / heightNeeded, // Dynamically calculates the container's height.
      child: child, // Displays the optional child widget, if provided.
    );
  }
}
