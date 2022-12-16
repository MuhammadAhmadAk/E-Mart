import 'package:emart_app/Screens/Category_Directory/item_detail.dart';
import 'package:emart_app/consts/consts.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return backGroundWidget(Scaffold(
      appBar: AppBar(title: title!.text.fontFamily(bold).make()),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby clothing"
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .roundedSM
                        .size(120, 50)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            //Categories Items
            20.heightBox,
            Expanded(
                child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 8,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 250,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      imgP5,
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    "Laptop 4GB/64Gb"
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                    10.heightBox,
                    "\$600".text.color(redColor).fontFamily(bold).make(),
                  ],
                )
                    .box
                    .white
                    .margin(const EdgeInsets.symmetric(horizontal: 4))
                    .roundedSM
                    .outerShadow
                    .padding(const EdgeInsets.all(12))
                    .make()
                    .onTap(() {
                  Get.to(() => const ItemDetails(title: "Dummy Item"));
                });
              },
            ))
          ],
        ),
      ),
    ));
  }
}
