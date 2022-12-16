import 'package:emart_app/consts/consts.dart';

class ItemDetails extends StatelessWidget {
  final String title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title.text.fontFamily(bold).color(darkFontGrey).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
              )),
        ],
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                    autoPlay: true,
                    height: 350,
                    itemCount: 3,
                    aspectRatio: 16 / 9,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        imgFc5,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  ),

                  //title

                  title.text
                      .size(16)
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  "\$30,000"
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),

                  10.heightBox,

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Seller".text.white.fontFamily(semibold).make(),
                            5.heightBox,
                            "In House Brand"
                                .text
                                .color(darkFontGrey)
                                .fontFamily(semibold)
                                .make()
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        backgroundColor: whiteColor,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      )
                    ],
                  )
                      .box
                      .height(60)
                      .padding(const EdgeInsets.symmetric(horizontal: 16))
                      .color(textfieldGrey)
                      .make(),
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                              children: List.generate(
                            3,
                            (index) => VxBox()
                                .size(40, 40)
                                .roundedFull
                                .color(Vx.randomPrimaryColor)
                                .margin(
                                    const EdgeInsets.symmetric(horizontal: 6))
                                .make(),
                          ))
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
//Quantity Row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Qunatity ".text.color(textfieldGrey).make(),
                          ),
                          Row(children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove)),
                            "0 "
                                .text
                                .size(16)
                                .color(darkFontGrey)
                                .fontFamily(bold)
                                .make(),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.add)),
                            10.heightBox,
                            "(0 avaliable)".text.color(textfieldGrey).make()
                          ])
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
//total

                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total ".text.color(textfieldGrey).make(),
                          ),
                          "\$0.00"
                              .text
                              .color(redColor)
                              .size(16)
                              .fontFamily(bold)
                              .make()
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make()
                    ],
                  ).box.white.shadowSm.make(),

                  //Description
                  10.heightBox,
                  "Description"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(bold)
                      .make(),
                  10.heightBox,
                  "this dummy item & Dummy Description this dummy item & Dummy Description this dummy item & Dummy Description this dummy item & Dummy Description this dummy item & Dummy Description this dummy item & Dummy Description"
                      .text
                      .color(darkFontGrey)
                      .make(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: OurButtons(
            title: "Add to Cart",
            textColor: whiteColor,
            backcolor: redColor,
            onPressed: () {},
          ),
        )
      ]),
    );
  }
}
