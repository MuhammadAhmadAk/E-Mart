import 'package:emart_app/Controller/profile_controller.dart';
import 'package:emart_app/consts/consts.dart';
import 'dart:io';

class EditProfileScreen extends StatelessWidget {
  final dynamic data;
  const EditProfileScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ProfileController>();
    controller.nameController.text = data['name'];
    controller.passwordController.text = data['password'];

    return backGroundWidget(Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            controller.profileImagePath.isEmpty
                ? Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make()
                : Image.file(
                    File(controller.profileImagePath.value),
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            OurButtons(
              title: "Change",
              textColor: whiteColor,
              backcolor: redColor,
              onPressed: () {
                controller.changeImage(context);
              },
            ),
            const Divider(),
            customTextfield(
                controller: controller.nameController,
                hint: nameHint,
                title: name,
                isPass: false),
            customTextfield(
                controller: controller.passwordController,
                hint: passwordHint,
                title: password,
                isPass: true),
            20.heightBox,
            SizedBox(
              width: context.screenWidth - 40,
              child: OurButtons(
                title: "Save",
                textColor: whiteColor,
                backcolor: redColor,
                onPressed: () {},
              ),
            ),
          ],
        )
            .box
            .white
            .shadowSm
            .padding(const EdgeInsets.all(16))
            .margin(const EdgeInsets.only(top: 50, left: 15, right: 15))
            .rounded
            .make(),
      ),
    ));
  }
}
