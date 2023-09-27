import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/controller/home_controller.dart';
import 'package:e_commerce_seller/view/home_screen/home_screen.dart';
import 'package:e_commerce_seller/view/order_screen/order_screen.dart';
import 'package:e_commerce_seller/view/product_screen/product_screen.dart';
import 'package:get/get.dart';

import '../profile_screen/profile_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navScreen = [
      const HomeScreen(),
      const ProductsScreen(),
      const OrdersScreen(),
      const ProfileScreen()
    ];
    var bottomNavBar = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: dashborad),
      BottomNavigationBarItem(
          icon: Image.asset(imgProduct, color: darkGrey, width: 24),
          label: products),
      BottomNavigationBarItem(
          icon: Image.asset(icOrders, color: darkGrey, width: 24),
          label: orders),
      BottomNavigationBarItem(
          icon: Image.asset(icGeneralSetting, color: darkGrey, width: 24),
          label: settings)
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: (index) {
            controller.navIndex.value = index;
          },
          currentIndex: controller.navIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: purpleColor,
          unselectedItemColor: darkGrey,
          items: bottomNavBar,
        ),
      ),

      body: Obx(()=>
         Column(
          children: [

                Expanded(child: navScreen.elementAt(controller.navIndex.value)),
          ],
        ),
      ),
    );
  }
}
