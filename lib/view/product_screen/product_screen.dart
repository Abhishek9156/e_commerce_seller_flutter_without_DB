import 'package:e_commerce_seller/view/product_screen/add_product.dart';
import 'package:e_commerce_seller/view/product_screen/product_detail.dart';
import 'package:e_commerce_seller/widgets/appbar_widget.dart';
import 'package:get/get.dart';
import '../../const/const.dart';
import '../../widgets/text_style.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {Get.to(()=>const AddProduct());},
        child: const Icon(Icons.add),
      ),
      appBar: appBarWidget(products),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,


        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {Get.to(()=>const ProductDetail());},
            leading: Image.asset(
              imgsProduct,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            title: boldText(text: "Product title", color: fontGrey),
            subtitle: Row(
              children: [
                normalText(text: "\$40.0", color: darkGrey),
              10.widthBox,
                boldText(text: "Featured",color: green)
              ],
            ),
            trailing: VxPopupMenu(
              arrowSize: 0.0,
                menuBuilder: () => Column(
                      children: List.generate(
                        popupMenuTitle.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(

                            children: [
                              Icon(popupMenuIcons[index]),
                              5.widthBox,
                              normalText(
                                  text: popupMenuTitle[index], color: darkGrey)
                            ],

                          ).onTap(() { }),

                        ),
                      ),


                    ).box.white.roundedSM.shadowSm.width(200).make(),
                clickType: VxClickType.singleClick,

                child: const Icon(Icons.more_vert_rounded)),
          );

        }, separatorBuilder: (BuildContext context, int index) {
        return const Divider(color: purpleColor);
      },

      ),
    );
  }
}
