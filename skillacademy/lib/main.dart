import 'package:skillacademy/export/export.dart';

/// The main entry point of the application.
void main() {
  // Runs the root widget of the application.
  runApp(const MyApp());
}

/// The root widget of the Flutter application.
///
/// This widget initializes the application and sets up the theme, title,
/// and starting screen.
class MyApp extends StatelessWidget {
  /// Default constructor for the MyApp class.
  const MyApp({super.key});

  /// Builds the widget tree for the application.
  ///
  /// Returns a [MaterialApp] widget with:
  /// - Application title
  /// - Material 3 design enabled
  /// - No debug banner
  /// - The `BottomNavigationoptionScreen` as the home screen
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Sets the title of the application, visible to the OS.
      title: 'Skillacademy',
      
      // Disables the debug banner in development mode.
      debugShowCheckedModeBanner: false,
      
      // Applies the theme for the application with Material 3 enabled.
      theme: ThemeData(
        scaffoldBackgroundColor: customWhite,
        useMaterial3: true,
      ),
      
      // Sets the initial screen of the app.
      home: BottomNavigationoptionScreen(),
    );
  }
}
