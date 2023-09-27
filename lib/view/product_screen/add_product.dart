import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/view/product_screen/component/product_dropdown.dart';
import 'package:e_commerce_seller/view/product_screen/component/product_images.dart';
import 'package:e_commerce_seller/widgets/custom_textfield.dart';
import 'package:e_commerce_seller/widgets/our_button.dart';
import 'package:get/get.dart';

import '../../widgets/text_style.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: normalText(text: "Product title", size: 16.0),
        actions: [
          TextButton(
              onPressed: () {}, child: normalText(text: save, color: white))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.heightBox,
              customTextField(hint: "eg BMw", label: "Product name"),
              10.heightBox,
              customTextField(
                  hint: "eg Nice product", label: description, isDes: true),
              10.heightBox,
              customTextField(hint: "\$100", label: "Price"),
              10.heightBox,
              customTextField(hint: "eg 20", label: "Quantity"),
              10.heightBox,

              productDropDown(),
              10.heightBox,
              productDropDown(),
              10.heightBox,
              const Divider(color: white),
              normalText(text: "choose product image"),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    3, (index) => productImages(label: "${index + 1}")),
              ),
              5.heightBox,
              normalText(text: "First image will be your display image"),
              const Divider(color: white),

              10.heightBox,
              boldText(text: "Choose product color"),
              10.heightBox,
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: List.generate(
                    10,
                    (index) => Stack(
                      alignment: Alignment.center,
                      children: [
                        VxBox()
                            .color(Vx.randomPrimaryColor)
                            .roundedFull
                            .size(70, 70)
                            .make(),
                        const Icon(Icons.done,color: Colors.white,),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
