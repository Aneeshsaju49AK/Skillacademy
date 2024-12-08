import 'package:skillacademy/export/export.dart';


class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  final double sizeWidth;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: CustomContainer(
        sizeWidth: sizeWidth,
        sizeHeight: sizeHeight,
        heightNeeded: 2,
        widthNeeded: 1,
        child: Column(
          children: [
            CategoriesHeadingSection(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
            GridViewSection(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
          ],
        ),
      ),
    );
  }
}
