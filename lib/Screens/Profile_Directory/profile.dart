// ignore_for_file: unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart_app/Controller/auth_controller.dart';
import 'package:emart_app/Controller/profile_controller.dart';
import 'package:emart_app/Screens/Profile_Directory/edit_profile_screen.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/services/firestore_service.dart';

import 'components/detail_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var profileController = Get.put(ProfileController());
    return backGroundWidget(Scaffold(
      body: StreamBuilder(
        stream: FireStoreService.getUser(currentUser!.uid),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(redColor),
              ),
            );
          } else {
            var data = snapshot.data!.docs[0];
            return SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {
                          profileController.nameController.text = data['name'];
                          profileController.passwordController.text =
                              data['password'];
                          Get.to(() => EditProfileScreen(
                                data: data,
                              ));
                        },
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
                      data['imgUrl'] == null
                          ? Image.asset(
                              imgProfile2,
                              width: 100,
                              fit: BoxFit.cover,
                            ).box.roundedFull.clip(Clip.antiAlias).make()
                          : Image.network(
                              data['imgUrl'],
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                      10.widthBox,
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "${data['name']}".text.fontFamily(bold).white.make(),
                          "${data['email']}".text.white.make()
                        ],
                      )),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: whiteColor)),
                          onPressed: () async {
                            await Get.put(AuthController())
                                .signOutMethod(context);
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
                        count: data['cart_count'],
                        width: context.screenWidth / 3.4),
                    detailCard(
                        title: "In your WishList",
                        count: data['wishList'],
                        width: context.screenWidth / 3.4),
                    detailCard(
                        title: "Your Order",
                        count: data['order_count'],
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
            ));
          }
        },
      ),
    ));
  }
}
