import 'package:e_commerce_seller/view/order_screen/order_detail.dart';

import '../../const/const.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;
import 'package:get/get.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(orders),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: List.generate(
              20,
              (index) => ListTile(
                onTap: () {
                  Get.to(() => const OrderDetail());
                },
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(imgsProduct,
                      width: 80, height: 80, fit: BoxFit.cover),
                ),
                tileColor: white,
                title: boldText(text: "25652562556", color: fontGrey),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.calendar_month, color: fontGrey),
                        10.widthBox,
                        boldText(
                            text: intl.DateFormat()
                                .add_yMd()
                                .format(DateTime.now()),
                            color: fontGrey),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.payment, color: fontGrey),
                        10.widthBox,
                        boldText(text: unpaid, color: red),
                      ],
                    )
                  ],
                ),
                trailing:
                    boldText(text: "\$40.0", size: 16.0, color: purpleColor),
              )
                  .box
                  .margin(const EdgeInsets.only(bottom: 5))
                  .roundedSM
                  .shadow
                  .color(Colors.white)
                  .make(),
            ),
          ),
        ),
      ),
    );
  }
}
