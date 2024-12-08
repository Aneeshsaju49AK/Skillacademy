import 'package:skillacademy/export/export.dart';

class GridViewSection extends StatelessWidget {
  const GridViewSection({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
  });

  final double sizeWidth;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                navigateToScreen(
                    context, const Mathematicspage());
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
    );
  }
}