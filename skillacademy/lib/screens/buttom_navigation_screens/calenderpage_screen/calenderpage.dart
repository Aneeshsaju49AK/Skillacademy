import 'package:skillacademy/export/export.dart';

class Calenderpage extends StatefulWidget {
  const Calenderpage({super.key});

  @override
  State<Calenderpage> createState() => _CalenderpageState();
}

class _CalenderpageState extends State<Calenderpage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Calender page"),
        ),
      ),
    );
  }
}
