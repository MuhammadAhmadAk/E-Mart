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
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: redColor),
                borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(20))),
      ),
      5.heightBox,
    ],
  );
}
