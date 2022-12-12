import 'package:emart_app/consts/consts.dart';

class MainController extends GetxController{
  var obsText= true.obs;
  togglePassword() {
    obsText.value = !obsText.value;
    refresh();
  }
}