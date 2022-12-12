import 'package:emart_app/Controller/main_controller.dart';
import 'package:emart_app/consts/consts.dart';

Widget customTextfield({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(

        decoration: InputDecoration(
            hintText: hint,
            hintStyle:
                const TextStyle(fontFamily: semibold, color: textfieldGrey),

            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: redColor),
              ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                )),
      ),
      5.heightBox,
    ],
  );
}

Widget passwordField({String? title, String? hint, controller}) {
  var controller = Get.put(MainController());
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        obscureText: controller.obsText.value,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle:
            const TextStyle(fontFamily: semibold, color: textfieldGrey),
            suffixIcon: Obx(()=>const Icon(Icons.remove_red_eye)),
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: redColor),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            )),
      ),
      5.heightBox,
    ],
  );
}