import 'package:e_commerce_seller/const/const.dart';

import '../../widgets/text_style.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: darkGrey,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: normalText(text: "Product title", size: 16.0, color: fontGrey),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VxSwiper.builder(
                autoPlay: true,
                height: 350,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Image.asset(
                    imgsProduct,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }),
            10.heightBox,
            //##Titel and detail
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldText(text: "shoes", color: fontGrey, size: 16.0),
                  10.heightBox,
                  Row(
                    children: [
                      boldText(text: "Category",color: fontGrey),
                      10.widthBox,
                      normalText(text: "Subcategory",color: fontGrey,size: 16.0),

                    ],
                  ),
                  10.heightBox,
                  VxRating(
                    isSelectable: false,
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    value: double.parse("2.3"),
                    count: 5,
                    size: 25,
                    maxRating: 5,
                  ),
                  10.heightBox,
                  boldText(text: "1650.0", size: 18.0, color: red),
                  10.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                           child: boldText(text: "Color",color: fontGrey),
                          ),
                          Row(
                            children: List.generate(
                                3,
                                (index) =>
                                            VxBox()
                                                .size(40, 40)
                                                .roundedFull
                                                .color(Vx.randomColor)
                                                .margin(
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4))
                                                .make()
                                                .onTap(() {}),
                                         ),
                          ),
                        ],
                      ),
                      10.heightBox,
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: boldText(text: "Quantity",color: fontGrey),
                          ),
                          normalText(text: "20 items",color: fontGrey),
                        ],

                      )
                    ],
                  ).box.white.padding(const EdgeInsets.all(8)).make(),
                  const Divider(),
                  20.heightBox,
                 boldText(text: "Description",color: fontGrey,size: 14.0),
                  10.heightBox,
                  normalText(text: description,color: fontGrey),
                  10.heightBox,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
