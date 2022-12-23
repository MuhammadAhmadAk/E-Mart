import 'package:emart_app/consts/consts.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backGroundWidget(Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imgProfile2,
            width: 100,
            fit: BoxFit.cover,
          ).box.roundedFull.clip(Clip.antiAlias).make(),
          10.heightBox,
          OurButtons(
            title: "Change",
            textColor: whiteColor,
            backcolor: redColor,
            onPressed: () {},
          ),
          const Divider(),
          customTextfield(hint: nameHint, title: name, isPass: false),
          customTextfield(hint: passwordHint, title: password, isPass: true),
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
    ));
  }
}
