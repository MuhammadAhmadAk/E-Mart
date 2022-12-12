import 'package:emart_app/Screens/auth/signup.dart';
import 'package:emart_app/consts/consts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return backGroundWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogo(),
              10.heightBox,
              'Login Into $appname'.text.fontFamily(bold).white.size(22).make(),
              10.heightBox,
              Column(
                children: [
                  customTextfield(hint: emailHint, title: email),
                  passwordField(hint: passwordHint, title: password),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {}, child: forgotPassword.text.make())),
                  OurButtons(
                    backcolor: redColor,
                    textColor: whiteColor,
                    onPressed: () {},
                    title: login,
                  ).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  Align(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {},
                          child: createNewAccount.text.make())),
                  5.heightBox,
                  OurButtons(
                    backcolor: lightGolden,
                    textColor: redColor,
                    onPressed: () {
                      Get.to(() => const SignUpScreen(),
                          transition: Transition.upToDown,
                          duration: const Duration(seconds: 2));
                    },
                    title: signUp,
                  ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  loginWith.text.make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => CircleAvatar(
                              radius: 25,
                              backgroundColor: lightGrey,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            )),
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
