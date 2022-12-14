import 'package:emart_app/Screens/Home_Directory/Component/featured_button.dart';
import 'package:emart_app/consts/consts.dart';

import '../../WidgetsCommon/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              color: lightGrey,
              alignment: Alignment.center,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                    hintText: searchAnyThing,
                    fillColor: whiteColor,
                    filled: true,
                    suffixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(color: textfieldGrey)),
              ),
            ),
           Expanded(
             child: SingleChildScrollView(
               physics:const BouncingScrollPhysics(),
               child: Column(children: [
                 VxSwiper.builder(
                   aspectRatio: 16 / 9,
                   autoPlay: true,
                   height: 150,
                   enlargeCenterPage: true,
                   itemCount: sliderList.length,
                   itemBuilder: (context, index) {
                     return Image.asset(
                       sliderList[index],
                       fit: BoxFit.fill,
                     )
                         .box
                         .rounded
                         .clip(Clip.antiAlias)
                         .margin(const EdgeInsets.symmetric(horizontal: 8))
                         .make();
                   },
                 ),
                 10.heightBox,

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: List.generate(
                       2,
                           (index) => homeButton(
                           height: context.screenHeight * 0.15,
                           width: context.screenWidth / 2.5,
                           icon: index == 0 ? icTodaysDeal : icFlashDeal,
                           title: index == 0 ? todayDeal : flashSale)),
                 ),
                 10.heightBox,
//2nd Slider
                 VxSwiper.builder(
                   aspectRatio: 16 / 9,
                   autoPlay: true,
                   height: 150,
                   enlargeCenterPage: true,
                   itemCount: sliderList.length,
                   itemBuilder: (context, index) {
                     return Image.asset(
                       secSliderList[index],
                       fit: BoxFit.fill,
                     )
                         .box
                         .rounded
                         .clip(Clip.antiAlias)
                         .margin(const EdgeInsets.symmetric(horizontal: 8))
                         .make();
                   },
                 ),
                 20.heightBox,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: List.generate(
                       3,
                           (index) => homeButton(
                           height: context.screenHeight * 0.12,
                           width: context.screenWidth / 3.5,
                           icon: index == 0 ? icCategories :index==1 ?icBrands:icTopSeller,
                           title: index == 0 ? categories :index==1?brand:topSeller)),
                 ),
                 Align(
                   alignment: Alignment.centerLeft,
                   child: featuredCategories.text.color(darkFontGrey).fontFamily(semibold).size(22).make(),
                 ),
                 20.heightBox,
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(children:List.generate(3, (index) => Column(children: [
                     featuredButton(icon: featuredImages1[index],title: featuredTitle1[index]),
                     10.heightBox,
                     featuredButton(icon: featuredImages2[index],title: featuredTitle2[index])
                   ],)).toList()),
                 ),

               ],),
             ),
           )
          ],
        ),
      ),
    );
  }
}
