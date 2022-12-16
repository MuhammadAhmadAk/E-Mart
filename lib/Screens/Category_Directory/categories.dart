import 'package:emart_app/Screens/Category_Directory/category_detail.dart';
import 'package:emart_app/consts/consts.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return backGroundWidget(Scaffold(
      appBar: AppBar(
        title: categories.text.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 200,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  categoriesImages[index],
                  height: 120,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                10.heightBox,
                categoriesList[index]
                    .text
                    .color(darkFontGrey)
                    .align(TextAlign.center)
                    .make(),
              ],
            )
                .box
                .white
                .rounded
                .clip(Clip.antiAlias)
                .outerShadow
                .make()
                .onTap(() {
              Get.to(() => CategoryDetails(
                    title: categoriesList[index],
                  ));
            });
          },
        ),
      ),
    ));
  }
}
