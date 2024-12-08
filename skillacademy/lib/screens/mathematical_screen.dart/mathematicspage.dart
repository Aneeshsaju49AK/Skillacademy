import 'package:flutter/material.dart';
import 'package:skillacademy/core/data_utls.dart';
import 'package:skillacademy/export/export.dart';
import 'package:skillacademy/services/common_services.dart';

class Mathematicspage extends StatefulWidget {
  const Mathematicspage({super.key});

  @override
  State<Mathematicspage> createState() => _MathematicspageState();
}

class _MathematicspageState extends State<Mathematicspage> {
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
              sizeHeight: sizeHeight,
              heightNeeded: 10,
              widthNeeded: 1,
              child: Row(
                children: [
                  CustomSizedBox(
                    sizeWidth: 25,
                  ),
                  InkWell(
                    onTap: () {
                      navigationPopScreen(context);
                    },
                    child: Icon(
                      Icons.keyboard_backspace,
                      size: 30,
                    ),
                  ),
                  CustomSizedBox(
                    sizeWidth: 30,
                  ),
                  CustomText(content: "Mathematics Teachers",fontSize: 20,fontWeight: FontWeight.w500 ,)
                ],
              ),
            ),
            CustomContainer(
              sizeWidth: sizeWidth,
              sizeHeight: sizeHeight,
              heightNeeded: 12,
              widthNeeded: 1,
              child: CustomTextField(),
            ),
            Expanded(
              child: CustomContainer(
                sizeWidth: sizeWidth,
                sizeHeight: sizeHeight,
                heightNeeded: 1,
                widthNeeded: 1,
                child: DefaultTabController(
                  length: 3, // Number of tabs
                  child: Column(
                    children: [
                      TabBar(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        isScrollable: false, // Stretch tabs equally
                        labelColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor: Colors.black,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(25), // Rounded indicator
                          color: Colors.black, // Indicator color
                        ),
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(25)),
                              height: 45,
                              alignment: Alignment.center,
                              child: CustomText(content: "All",fontSize: 15,fontWeight: FontWeight.w500 ,),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(25)),
                              height: 45,
                              alignment: Alignment.center,
                              child: CustomText(content: "Sort",fontSize: 15,fontWeight: FontWeight.w500 ,),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(25)),
                              height: 45,
                              alignment: Alignment.center,
                              child: CustomText(content: "Filter",fontSize: 15,fontWeight: FontWeight.w500 ,),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            // ListView for Tab 1
                            CustomCard(
                                sizeWidth: sizeWidth, sizeHeight: sizeHeight),
                            CustomCard(
                                sizeWidth: sizeWidth, sizeHeight: sizeHeight),
                            CustomCard(
                                sizeWidth: sizeWidth, sizeHeight: sizeHeight),

                            // ListView for Tab 2
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  final double sizeWidth;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: sizeWidth / 1,
          // Full width
          padding: EdgeInsets.all(16), // Add padding
          // Background color
          child: Text(
            "8 Founds", // Your text
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center, // Center the text
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 8, // Example item count
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                child: Container(
                  width: sizeWidth / 1,
                  height: sizeHeight / 5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.2), // Light black color
                        offset: Offset(
                            3, 3), // Shadow position (x: right, y: bottom)
                        blurRadius: 6, // Blur effect
                        spreadRadius: 1, // Spread effect
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          width: sizeWidth / 3.3,
                          height: sizeHeight / 6,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            teacherImage[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomSizedBox(
                            sizeHeight: 5,
                          ),
                          Container(
                            width: sizeWidth / 1.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(content: teacherName[index],fontSize: 17,fontWeight: FontWeight.w500,),
                                Spacer(),
                                Icon(
                                  Icons.favorite_border,
                                ),
                                CustomSizedBox(
                                  sizeWidth: 10,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: sizeWidth / 1.9,
                            child: Divider(
                              color: Colors.grey
                                  .withOpacity(0.1), // Color of the divider
                              height: 10, // Space between adjacent widgets
                              thickness: 1, // Thickness of the divider
                            ),
                          ),
                          CustomText(content: subject[index],fontWeight: FontWeight.w500,),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              CustomText(content: "Banglore")
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                startImage[index],
                                scale: 2,
                              ),
                              SizedBox(
                                  width: 5), // Adds space between Icon and text
                              CustomText(content: rating[index]),
                              VerticalDivider(
                                color: Colors.black, // Divider color
                                thickness: 10, // Thickness of the divider
                                width:
                                    10, // Total width allocated for the divider
                                indent: 5, // Adds padding at the top
                                endIndent: 5, // Adds padding at the bottom
                              ),
                              CustomText(content: "${views[index]} Reviews"),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
