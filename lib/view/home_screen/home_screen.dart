import 'package:e_commerce_seller/widgets/dashboard_button.dart';
import 'package:e_commerce_seller/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;
import '../../const/const.dart';
import '../../widgets/appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(dashborad),

    body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context,
                    title: products, count: 75, icon: imgProduct),
                dashboardButton(context,
                    title: orders, count: 75, icon: icOrders),
              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context, title: rating, count: 5, icon: icStar),
                dashboardButton(context,
                    title: totalSale, count: 75, icon: icShopSetting),
              ],
            ),
            10.heightBox,
            const Divider(),
            10.heightBox,
            boldText(text: popular, size: 16.0, color: fontGrey),
            20.heightBox,
            ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: List.generate(
                  3,
                  (index) => ListTile(
                        onTap: () {},
                        leading: Image.asset(
                          imgsProduct,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        title: boldText(text: "Product titel", color: fontGrey),
                        subtitle: normalText(text: "\$40.0", color: darkGrey),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
