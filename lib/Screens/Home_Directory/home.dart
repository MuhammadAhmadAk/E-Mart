import 'package:emart_app/Controller/home_controller.dart';
import 'package:emart_app/Screens/Cart_Directory/cart_screen.dart';
import 'package:emart_app/Screens/Home_Directory/home_screen.dart';
import 'package:emart_app/Screens/Profile_Directory/profile.dart';
import 'package:emart_app/consts/consts.dart';

import '../Category_Directory/categories.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItems=[
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26),label:home),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26),label:categories),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26),label:cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26),label:account),

    ];
    var navbarBody=[
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
        bottomNavigationBar: Obx(()=>
           BottomNavigationBar(
             currentIndex: controller.navIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: redColor,
          backgroundColor: whiteColor,
          selectedLabelStyle: const TextStyle(fontFamily: bold)
          ,items:navbarItems,onTap: (value) {
            controller.navIndex.value= value;
          },),
        ),
        body:Column(
          children: [
            Obx(()=> Expanded(child: navbarBody.elementAt(controller.navIndex.value),))
          ],
        ));
  }
}
