import 'package:emart_app/consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              color: lightGrey,
              alignment: Alignment.center,
              child: TextFormField(
                decoration:const InputDecoration(
                  hintText: searchAnyThing,
                  fillColor:whiteColor,
                  filled: true,
                  suffixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(color: textfieldGrey)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
