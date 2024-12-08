import 'package:skillacademy/export/export.dart';

/// A custom widget that displays a card containing information and a list of items.
///
/// The `CustomCard` widget consists of a header displaying a title (e.g., "8 Founds") 
/// and a `ListView.builder` that dynamically generates a list of items. Each item 
/// is displayed with an image, teacher name, subject, location, rating, and review count.
/// This widget is typically used for displaying a list of items such as teachers or courses.
class CustomCard extends StatelessWidget {
  /// Creates a `CustomCard` widget.
  ///
  /// The [sizeWidth] and [sizeHeight] parameters determine the size of the card 
  /// and the individual list items inside it.
  const CustomCard({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  /// The width of the widget.
  final double sizeWidth;

  /// The height of the widget.
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header of the card with a title "8 Founds"
        Container(
          width: sizeWidth / 1,
          padding: const EdgeInsets.all(16), // Add padding around the header
          child: const Center(
            child: CustomText(
              content: "8 Founds", // Title of the header
              fontSize: 18, // Font size for the title
              fontWeight: FontWeight.w600, // Font weight for the title
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 8, // Number of items in the list (8 items as an example)
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 5), // Padding for each item
                child: Container(
                  width: sizeWidth / 1, // Full width of the container
                  height: sizeHeight / 5, // Set height for each item
                  decoration: BoxDecoration(
                    color: customWhite, // White background for each item
                    borderRadius: BorderRadius.circular(14), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: customBlack.withOpacity(0.2), // Light shadow color
                        offset: const Offset(3, 3), // Shadow offset
                        blurRadius: 6, // Blur effect of the shadow
                        spreadRadius: 1, // Spread effect of the shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Even spacing between elements
                    children: [
                      // Image container
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias, // Clip the image to fit the container
                          width: sizeWidth / 3.3, // Set width for the image container
                          height: sizeHeight / 6, // Set height for the image container
                          decoration: BoxDecoration(
                              // Background color for the image container
                              borderRadius: BorderRadius.circular(20)), // Rounded corners
                          child: Image.asset(
                            teacherImage[index], // Display the image for the teacher
                            fit: BoxFit.cover, // Cover the container with the image
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space items evenly
                        crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
                        children: [
                          const CustomSizedBox(
                            sizeHeight: 5, // Spacer between elements
                          ),
                          CustomContainer(
                            sizeWidth: sizeWidth,
                            heightNeeded: 40,
                            widthNeeded: 1.8,
                            sizeHeight: sizeHeight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start, // Align children to the start
                              crossAxisAlignment: CrossAxisAlignment.start, // Align children to the top
                              children: [
                                CustomText(
                                  content: teacherName[index], // Teacher name
                                  fontSize: 17, // Font size for the name
                                  fontWeight: FontWeight.w500, // Font weight for the name
                                ),
                                const Spacer(), // Add space between name and icon
                                const Icon(
                                  Icons.favorite_border, // Icon for favorite action
                                ),
                                const CustomSizedBox(
                                  sizeWidth: 10, // Spacer between icon and the next widget
                                )
                              ],
                            ),
                          ),
                          // Divider for separation between sections
                          SizedBox(
                            width: sizeWidth / 1.9,
                            child: Divider(
                              color: customGrey.withOpacity(0.1), // Divider color
                              height: 10, // Height of the divider
                              thickness: 1, // Thickness of the divider
                            ),
                          ),
                          CustomText(
                            content: subject[index], // Display subject of the teacher
                            fontWeight: FontWeight.w500, // Font weight for subject text
                          ),
                          // Location of the teacher
                          const Row(
                            children: [
                              Icon(Icons.location_on_outlined), // Location icon
                              CustomText(content: "Banglore") // Location text
                            ],
                          ),
                          // Rating and review count section
                          Row(
                            children: [
                              Image.asset(
                                startImage[index], // Display rating icon/image
                                scale: 2, // Scale the rating icon
                              ),
                              const CustomSizedBox(
                                  sizeWidth: 5), // Spacer between the icon and rating
                              CustomText(content: rating[index]), // Rating text
                              const SizedBox(
                                height: 20, // Height for the divider between rating and reviews
                                child: VerticalDivider(
                                  color: customBlack, // Divider color
                                  thickness: 1, // Divider thickness
                                  width: 10, // Width allocated to the divider
                                  indent: 5, // Padding above the divider
                                  endIndent: 5, // Padding below the divider
                                ),
                              ),
                              CustomText(content: "${views[index]} Reviews"), // Display review count
                            ],
                          ),
                        ],
                      ),
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
