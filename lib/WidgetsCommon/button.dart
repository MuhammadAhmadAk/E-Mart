import 'package:emart_app/consts/consts.dart';

Widget ourButton({onPress, color, textColor, title}) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(color),
    ),
    onPressed: () {
      onPress;
    },
    child: Text(
      title,
      style: TextStyle(fontFamily: bold, color: color),
    ),
  );
}
