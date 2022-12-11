import 'package:emart_app/WidgetsCommon/applogo.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            20.heightBox,
            appLogo(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            10.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.fontFamily(semibold).white.make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
