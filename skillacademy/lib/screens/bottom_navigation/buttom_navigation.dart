import 'package:skillacademy/export/export.dart';
import 'package:skillacademy/screens/bottom_navigation/widgets/buttom_navigation_options.dart';
import 'package:skillacademy/screens/buttom_navigation_screens/calenderpage_screen/calenderpage.dart';
import 'package:skillacademy/screens/buttom_navigation_screens/locationpage_screen/locationpage.dart';
import 'package:skillacademy/screens/buttom_navigation_screens/profilepage_screen/profilepage.dart';
ValueNotifier<int> indexChangeNotifer = ValueNotifier(0);

class BottomNavigationoptionScreen extends StatelessWidget {
  const BottomNavigationoptionScreen({super.key});

  final _pages = const [
    MyHomePage(),
    Locationpage(),
    Calenderpage(),
    Profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifer,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}