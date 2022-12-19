import 'package:emart_app/consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
    child: Center(child: "cart is Empty".text.fontFamily(bold).size(30).make(),),
    );
  }
}
