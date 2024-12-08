import 'package:skillacademy/export/export.dart';

Future<void> navigateToScreen(BuildContext context, Widget screen) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}


void navigateToScreenReplacement(BuildContext context, Widget screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}


void navigationPopScreen(BuildContext context){
  Navigator.pop(context);
}