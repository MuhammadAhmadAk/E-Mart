import 'package:emart_app/Controller/main_controller.dart';
import 'package:emart_app/consts/consts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var controller = Get.put(MainController());
    return backGroundWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogo(),
              10.heightBox,
              'Join the  $appname'.text.fontFamily(bold).white.size(22).make(),
              10.heightBox,
              Column(
                children: [
                  customTextfield(hint: nameHint, title: name),
                  customTextfield(hint: emailHint, title: email),
                  passwordField(hint: passwordHint, title: password),
                  Row(
                    children: [
                      GetBuilder<MainController>(builder: (controller) {
                        return Checkbox(
                            fillColor: MaterialStateProperty.all(redColor),
                            checkColor: whiteColor,
                            value: controller.isCheck,
                            onChanged: (newValue) {
                              controller.ischeckbox(newValue);
                            });
                      }),
                      5.widthBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: 'I agree to the ',
                                style: TextStyle(
                                    color: fontGrey, fontFamily: regular)),
                            TextSpan(
                                text: termAndCondition,
                                style: TextStyle(
                                    color: redColor, fontFamily: regular)),
                            TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                    color: fontGrey, fontFamily: regular))
                          ]),
                        ),
                      ),
                    ],
                  ),
                  GetBuilder<MainController>(builder: (controller) {
                    return OurButtons(
                      backcolor: controller.isCheck ? redColor : lightGrey,
                      textColor: controller.isCheck ? whiteColor : darkFontGrey,
                      onPressed: () {},
                      title: signUp,
                    ).box.width(context.screenWidth - 50).make();
                  }),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreadyHaveAccount.text.fontFamily(regular).make(),
                      login.text
                          .fontFamily(bold)
                          .color(redColor)
                          .make()
                          .onTap(() {
                        Get.back();
                      }),
                    ],
                  )
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(15))
                  .width(context.screenWidth - 70)
                  .shadowMd
                  .make(),
            ],
          ),
        ),
      ),
    ));
  }
}
