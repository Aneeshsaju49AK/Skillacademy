import 'package:skillacademy/export/export.dart';

class HeaderWithIconHomepage extends StatelessWidget {
  const HeaderWithIconHomepage({
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
      widthNeeded: 1,
      sizeHeight: sizeHeight,
      heightNeeded: 11,
      child: Row(
        children: [
          const CustomSizedBox(
            sizeWidth: 25,
          ),
          const CustomText(
            content: "Hey,Aman",
            fontWeight: FontWeight.w500,
          ),
          const Spacer(),
          CircleAvatar(
            radius: 17,
            backgroundColor: customColor,
            child: Image.asset(
              "assets/images/image copy 4.png",
              scale: 2,
            ),
          ),
          const CustomSizedBox(
            sizeWidth: 25,
          ),
        ],
      ),
    );
  }
}