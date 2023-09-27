import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/widgets/our_button.dart';
import 'package:get/get.dart';

import '../../widgets/text_style.dart';
import 'component/order_place_detail.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

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
        title: normalText(text: orderDetail, size: 16.0, color: fontGrey),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: context.screenWidth,
        child: ourButton(color: green, onPress: () {}, title: "Confirm Order"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //order delivery status section
            Visibility(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.heightBox,
                  boldText(text: "Order Status", color: fontGrey, size: 16.0),
                  SwitchListTile(
                      activeColor: Colors.green,
                      value: true,
                      onChanged: (value) {},
                      title: boldText(text: "Placed", color: fontGrey)),
                  SwitchListTile(
                      activeColor: Colors.green,
                      value: true,
                      onChanged: (value) {},
                      title: boldText(text: "Confirmed", color: fontGrey)),
                  SwitchListTile(
                      activeColor: Colors.green,
                      value: true,
                      onChanged: (value) {},
                      title: boldText(text: "On Delivery", color: fontGrey)),
                  SwitchListTile(
                      activeColor: Colors.green,
                      value: true,
                      onChanged: (value) {},
                      title: boldText(text: "Delivered", color: fontGrey)),
                ],
              )
                  .box
                  .padding(const EdgeInsets.all(8))
                  .outerShadowMd
                  .white
                  .border(color: lightGrey)
                  .roundedSM
                  .make(),
            ),
            const Divider(),
            //Order detal section
            Column(
              children: [
                orderPlaceDetail(
                    title1: "Order Code",
                    title2: "Shipping Method",
                    d1: "data['order_code']",
                    d2: "data['shipping_method']"),
                orderPlaceDetail(
                    title1: "Order Date",
                    title2: "Payment Method",
                    d1: DateTime.now(),
                    d2: "data['payment_method']"),
                orderPlaceDetail(
                  title1: "Payment Status",
                  title2: "Delivery Status",
                  d1: "Unpaid",
                  d2: "Order Placed",
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          boldText(
                              text: "Shipping Address", color: purpleColor),
                          "{data['order_by_name']}".text.make(),
                          "{data['order_by_email']}".text.make(),
                          "{data['order_by_address']}".text.make(),
                          "{data['order_by_city']}".text.make(),
                          "{data['order_by_state']}".text.make(),
                          "{data['order_by_phone']}".text.make(),
                          "{data['order_by_postalcode']}".text.make(),
                        ],
                      ),
                      SizedBox(
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            boldText(text: "Total Amount", color: purpleColor),
                            boldText(text: "3000", color: red, size: 16.0),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ).box.outerShadowMd.white.border(color: lightGrey).roundedSM.make(),
            const Divider(),
            10.heightBox,
            boldText(text: "Ordered Products", color: fontGrey, size: 16.0),
            10.heightBox,
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(3, (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    orderPlaceDetail(
                        title1: "data['orders'][index]['title']",
                        title2: "data['orders'][index]['tprice']",
                        d1: "{data['orders'][index]['qty']}x",
                        d2: "Refundable"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        width: 30,
                        height: 20,
                        color: purpleColor,
                      ),
                    ),
                    const Divider(),
                  ],
                );
              }).toList(),
            )
                .box
                .outerShadowMd
                .white
                .margin(const EdgeInsets.only(bottom: 4))
                .make(),
            20.heightBox,
          ],
        ),
      ),
    );
  }
}
