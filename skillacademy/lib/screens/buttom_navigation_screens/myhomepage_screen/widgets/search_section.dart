import 'package:skillacademy/export/export.dart';

class SearchSectionHomePage extends StatelessWidget {
  const SearchSectionHomePage({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  final double sizeWidth;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      sizeWidth: sizeWidth,
      sizeHeight: sizeHeight,
      heightNeeded: 14,
      widthNeeded: 1,
      child:const CustomTextField(),
    );
  }
}