import 'package:emart_app/consts/consts.dart';

class OurButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color backcolor;
  final VoidCallback onPressed;
  const OurButton(
      {super.key,
      required this.title,
      required this.textColor,
      required this.backcolor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: backcolor,
        ),
        child: title.text.color(textColor).fontFamily(bold).center.make(),
      ),
    );
  }
}

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
