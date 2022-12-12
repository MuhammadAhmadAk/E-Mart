import 'package:emart_app/consts/consts.dart';

class OurButtons extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color backcolor;
  final VoidCallback onPressed;
  const OurButtons(
      {super.key,
      required this.title,
      required this.textColor,
      required this.backcolor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backcolor),
          padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
        ),
        onPressed: onPressed,
        child: title.text.color(textColor).fontFamily(bold).make());
  }
}
