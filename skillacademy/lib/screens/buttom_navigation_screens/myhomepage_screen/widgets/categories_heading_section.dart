import 'package:skillacademy/export/export.dart';

class CategoriesHeadingSection extends StatelessWidget {
  const CategoriesHeadingSection({
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
      heightNeeded: 20,
      widthNeeded: 1,
      child:const Row(
        children: [
         CustomSizedBox(
            sizeWidth: 25,
          ),
          CustomText(
            content: "Categories",
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          Spacer(),
          CustomText(
            content: "See all",
            color: Colors.grey,
          ),
           CustomSizedBox(
            sizeWidth: 25,
          ),
        ],
      ),
    );
  }
}