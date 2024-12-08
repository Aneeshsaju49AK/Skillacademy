import 'package:skillacademy/export/export.dart';

/// Navigates to a new screen without replacing the current screen.
///
/// This function pushes a new route onto the navigation stack, allowing
/// the user to navigate back to the current screen from the target screen.
///
/// - [context]: The `BuildContext` of the current screen.
/// - [screen]: The widget representing the target screen.
///
/// Returns a [Future] that completes when the navigation is finished.
Future<void> navigateToScreen(BuildContext context, Widget screen) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}

/// Navigates to a new screen by replacing the current screen.
///
/// This function replaces the current route with the new route,
/// preventing the user from navigating back to the previous screen.
///
/// - [context]: The `BuildContext` of the current screen.
/// - [screen]: The widget representing the target screen.
void navigateToScreenReplacement(BuildContext context, Widget screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}

/// Pops the current screen off the navigation stack.
///
/// This function removes the current screen and returns the user
/// to the previous screen in the navigation stack.
///
/// - [context]: The `BuildContext` of the current screen.
void navigationPopScreen(BuildContext context) {
  Navigator.pop(context);
}
