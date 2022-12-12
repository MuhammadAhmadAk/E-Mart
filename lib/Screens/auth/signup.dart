import 'package:emart_app/consts/consts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return backGroundWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
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
                customTextfield(hint: passwordHint, title: password),
                customTextfield(hint: passwordHint, title: reTypePassword),
                Row(
                  children: [
                    Checkbox(
                        checkColor: redColor,
                        value: false,
                        onChanged: (newValue) {}),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'I agree to the ',
                              style:
                                  TextStyle(color: fontGrey, fontFamily: bold)),
                          TextSpan(
                              text: termAndCondition,
                              style:
                                  TextStyle(color: redColor, fontFamily: bold)),
                          TextSpan(
                              text: privacyPolicy,
                              style:
                                  TextStyle(color: fontGrey, fontFamily: bold))
                        ]),
                      ),
                    ),
                  ],
                ),
                OurButtons(
                  backcolor: redColor,
                  textColor: whiteColor,
                  onPressed: () {},
                  title: signUp,
                ).box.width(context.screenWidth - 50).make(),
                20.heightBox,
               RichText(text: const TextSpan(children: [
                 TextSpan(
                   text: alreadyHaveAccount,
                 style:TextStyle(color: fontGrey, fontFamily: bold)
                 ),
                 TextSpan(
                     text: login,
                     style:TextStyle(color: redColor, fontFamily: bold)
                 )
               ])).onTap(() {
                 Get.back();
               }),
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
    ));
  }
}
