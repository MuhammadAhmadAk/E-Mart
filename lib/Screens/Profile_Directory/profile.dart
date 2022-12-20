import 'package:emart_app/Controller/auth_controller.dart';
import 'package:emart_app/consts/consts.dart';

import 'components/detail_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return backGroundWidget(Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: whiteColor,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Image.asset(
                  imgProfile2,
                  width: 100,
                  fit: BoxFit.cover,
                ).box.roundedFull.clip(Clip.antiAlias).make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "User".text.fontFamily(bold).white.make(),
                    "Customer@example.com".text.white.make()
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: whiteColor)),
                    onPressed: () async {
                      await Get.put(AuthController()).signOutMethod(context);
                      Get.offAll(() => const LoginScreen());
                    },
                    child: "logout".text.fontFamily(regular).white.make())
              ],
            ),
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailCard(
                  title: "In your Cart",
                  count: "00",
                  width: context.screenWidth / 3.4),
              detailCard(
                  title: "In your WishList",
                  count: "64",
                  width: context.screenWidth / 3.4),
              detailCard(
                  title: "Your Order",
                  count: "45",
                  width: context.screenWidth / 3.4),
            ],
          ),
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const Divider(color: lightGrey);
            },
            itemCount: profileButtonList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  profileButtonIcons[index],
                  width: 22,
                ),
                title: profileButtonList[index]
                    .text
                    .fontFamily(bold)
                    .color(darkFontGrey)
                    .make(),
              );
            },
          )
              .box
              .white
              .margin(const EdgeInsets.all(12))
              .padding(const EdgeInsets.symmetric(horizontal: 16))
              .rounded
              .shadowSm
              .make()
              .box
              .color(redColor)
              .make(),
        ],
      )),
    ));
  }
}
