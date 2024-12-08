import 'package:skillacademy/export/export.dart';
import 'package:skillacademy/screens/bottom_navigation/buttom_navigation.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifer,
      builder: (context, int index, _) {
        return BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            indexChangeNotifer.value = value;
          },
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(
            color: Colors.black,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/image.png",
                  height: 24, // Adjust size as needed
                  width: 24,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/image copy.png",
                  height: 24, // Adjust size as needed
                  width: 24,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/image copy 2.png",
                  height: 24, // Adjust size as needed
                  width: 24,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/image copy 3.png",
                  height: 24, // Adjust size as needed
                  width: 24,
                ),
                label: ''),
          ],
        );
      },
    );
  }
}
