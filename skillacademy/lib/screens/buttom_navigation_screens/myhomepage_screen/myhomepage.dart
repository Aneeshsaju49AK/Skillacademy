import 'package:flutter/material.dart';
import 'package:skillacademy/core/colors_utls.dart';
import 'package:skillacademy/screens/mathematical_screen.dart/mathematicspage.dart';
import 'package:skillacademy/services/common_services.dart';

final List<String> catergoryImage = [
  "assets/images/image copy 5.png",
  "assets/images/image copy 6.png",
  "assets/images/image copy 7.png",
  "assets/images/image copy 8.png",
  "assets/images/image copy 9.png",
  "assets/images/image copy 10.png",
  "assets/images/image copy 11.png",
  "assets/images/image copy 12.png",
];

final List<String> catergoryName = [
  "Mathematics",
  "Physics",
  "Chemistry",
  "Biology",
  "Commerce",
  "English",
  "Hindi",
  "Cs"
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.sizeOf(context).height;
    final sizeWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomContainer(
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
            ),
            CustomContainer(
              sizeWidth: sizeWidth,
              sizeHeight: sizeHeight,
              heightNeeded: 15,
              widthNeeded: 1,
              child: CustomTextField(),
            ),
            CustomContainer(
              sizeWidth: sizeWidth,
              sizeHeight: sizeHeight,
              heightNeeded: 3.9,
              widthNeeded: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: sizeWidth / 1.1,
                    height: sizeHeight / 4.5,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(14)),
                    child: Text("data"),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: CustomContainer(
                sizeWidth: sizeWidth,
                sizeHeight: sizeHeight,
                heightNeeded: 2,
                widthNeeded: 1,
                child: Column(
                  children: [
                    CustomContainer(
                      sizeWidth: sizeWidth,
                      sizeHeight: sizeHeight,
                      heightNeeded: 20,
                      widthNeeded: 1,
                      child: Row(
                        children: [
                          const CustomSizedBox(
                            sizeWidth: 25,
                          ),
                          CustomText(content: "Categories"),
                          Spacer(),
                          CustomText(content: "See all"),
                          const CustomSizedBox(
                            sizeWidth: 25,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: CustomContainer(
                        sizeWidth: sizeWidth,
                        sizeHeight: sizeHeight,
                        heightNeeded: 2,
                        widthNeeded: 1,
                        child: GridView.builder(
                          padding: const EdgeInsets.all(20.0),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4, // 4 items per row
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 1.0,
                            childAspectRatio:
                                0.8, // Adjust the height-to-width ratio
                          ),
                          itemCount: 8, // Total 8 items
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                navigateToScreen(context,const Mathematicspage());
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        catergoryImage[
                                            index], // Replace with your image path
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      catergoryName[
                                          index], // Dynamic title for each item
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20, right: 20, top: 4, bottom: 4),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Teacher...', // Label text
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
          ), // Prefix icon
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none // Rounded border
              ),
    
          fillColor: customColor,
          filled: true, // Fill the background color
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(content);
  }
}

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({
    super.key,
    this.sizeWidth,
    this.sizeHeight,
  });
  final double? sizeWidth;
  final double? sizeHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeWidth ?? 0,
      height: sizeHeight ?? 0,
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
    required this.heightNeeded,
    required this.widthNeeded,
    this.child,
    this.color,
  });

  final double sizeWidth;
  final double sizeHeight;
  final double widthNeeded;
  final double heightNeeded;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: sizeWidth / widthNeeded,
      height: sizeHeight / heightNeeded,
      child: child,
    );
  }
}
