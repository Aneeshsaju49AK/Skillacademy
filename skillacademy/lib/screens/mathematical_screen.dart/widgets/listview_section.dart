import 'package:skillacademy/export/export.dart';

/// A widget representing a section with a tabbed list view.
///
/// This section contains a `TabBar` with three tabs: "All", "Sort", and "Filter". 
/// It displays a `CustomCard` widget in the `TabBarView` for each tab, 
/// where the content of the tabs can be customized further. 
/// The layout is responsive, adjusting based on the screen width and height.
class ListviewSection extends StatelessWidget {
  /// Creates a `ListviewSection` widget.
  ///
  /// This widget is responsible for rendering a section with a `TabBar` and a `TabBarView`.
  /// It organizes content into three tabs and displays corresponding cards in the `TabBarView`.
  const ListviewSection({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  /// The width of the screen, used to calculate the responsive width of the container.
  final double sizeWidth;

  /// The height of the screen, used to calculate the responsive height of the container.
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomContainer(
        sizeWidth: sizeWidth,
        sizeHeight: sizeHeight,
        heightNeeded: 1,  // Specifies the height of the container relative to the screen.
        widthNeeded: 1,   // Specifies the width of the container relative to the screen.
        child: DefaultTabController(
          length: 3,  // Number of tabs (All, Sort, Filter)
          child: Column(
            children: [
              // TabBar with custom styling and three tabs
              TabBar(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                isScrollable: false,  // Stretch tabs equally (non-scrollable)
                labelColor: customWhite,  // Color for the active tab
                indicatorSize: TabBarIndicatorSize.tab,  // The indicator size is the size of the tab
                unselectedLabelColor: Colors.black,  // Color for unselected tabs
                dividerColor: customTransparent,  // No divider between tabs
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),  // Rounded indicator
                  color: customBlack,  // Color of the tab indicator
                ),
                tabs: const [
                  CustomTab(label: "All"),  // First tab - "All"
                  CustomTab(label: "Sort"),  // Second tab - "Sort"
                  CustomTab(label: "Filter"),  // Third tab - "Filter"
                ],
              ),
              // TabBarView containing content for each tab
              Expanded(
                child: TabBarView(
                  children: [
                    // Content for the "All" tab: Displaying custom cards
                    CustomCard(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
                    CustomCard(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
                    CustomCard(sizeWidth: sizeWidth, sizeHeight: sizeHeight),

                    // Content for the "Sort" tab (currently empty)
                    // More content can be added here as required

                    // Content for the "Filter" tab (currently empty)
                    // More content can be added here as required
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
