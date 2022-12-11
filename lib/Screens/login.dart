import 'package:emart_app/WidgetsCommon/applogo.dart';
import 'package:emart_app/WidgetsCommon/custom_textfield.dart';
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
      body: Center(
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
                customTextfield(hint: passwordHint, title: password),
                Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {}, child: forgotPassword.text.make())),

                ourButton(
                  color: Colors.red,
                ).box.width(context.screenWidth - 50).make()
                //customTextfield()
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(15))
                .width(context.screenWidth - 40)
                .make(),
          ],
        ),
      ),
    ));
  }
}
