import 'package:emart_app/consts/consts.dart';

class MainController extends GetxController {
  var obsText = true.obs;
  var isCheck = false;
  togglePassword() {
    obsText.value = !obsText.value;
    refresh();
  }
  ischeckbox(value) {
    isCheck = value;
    refresh();
  }
}
