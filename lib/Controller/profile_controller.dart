import 'package:emart_app/consts/consts.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  var profileImagePath = ''.obs;
  var nameController = TextEditingController();
    var passwordController = TextEditingController();
  changeImage(context) async {
    final img = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 70);
    try {
      if (img == null) return;
      profileImagePath.value = img.path;
    } on PlatformException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
