import 'package:emart_app/Controller/auth_controller.dart';
import 'package:emart_app/Screens/Home_Directory/home.dart';
import 'package:emart_app/consts/consts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var authController = Get.put(AuthController());
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
                  customTextfield(
                      hint: "Name",
                      title: name,
                      controller: nameController,
                      isPass: false),
                  customTextfield(
                      hint: emailHint,
                      title: email,
                      controller: emailController,
                      isPass: false),
                  customTextfield(
                      hint: passwordHint,
                      title: password,
                      controller: passwordController,
                      isPass: true),
                  10.heightBox,
                  OurButtons(
                    backcolor: redColor,
                    textColor: whiteColor,
                    onPressed: () async {
                      try {
                        await authController
                            .signUpMethod(
                          context: context,
                          email: emailController.text,
                          password: passwordController.text,
                        )
                            .then((value) {
                          authController.storeUserData(
                              email: emailController.text,
                              password: passwordController.text,
                              name: nameController.text);
                        }).then((value) {
                          VxToast.show(context, msg: loginSuccess);
                          Get.offAll(() => const Home());
                        });
                      } catch (e) {
                        auth.signOut();
                        VxToast.show(context, msg: e.toString());
                      }
                    },
                    title: signUp,
                  ).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
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
