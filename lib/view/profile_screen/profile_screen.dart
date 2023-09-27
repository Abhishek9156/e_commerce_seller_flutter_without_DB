import 'package:e_commerce_seller/view/message_screen/message_screen.dart';
import 'package:e_commerce_seller/view/profile_screen/edit_profile_screen.dart';
import 'package:e_commerce_seller/view/shop_screen/shop_settings_screen.dart';
import 'package:e_commerce_seller/widgets/text_style.dart';
import 'package:get/get.dart';
import '../../const/const.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: normalText(text: settings, size: 16.0),
        actions: [
          IconButton(onPressed: () {
            Get.to(()=>const EditProfileScreen());
          }, icon: const Icon(Icons.edit)),
          TextButton(onPressed: () {}, child: normalText(text: logout))
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(imgsProduct).box.roundedFull.clip(Clip.antiAlias).make(),
            title: boldText(text: vendorName),
            subtitle: normalText(text: "abhc@gmail.com"),

          ),
          const Divider(color: Colors.white,endIndent: 10.0,indent: 10.0,),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(profileIconTitle.length, (index) => ListTile(
                onTap: (){
                  switch (index){
                    case 0:Get.to(()=>const ShopSettings());
                      break;
                    case 1:Get.to(()=>const MessageScreen());
                      break;
                  }
                },
                leading: Icon(profileIconList[index],color: white,),
                title: normalText(text: profileIconTitle[index]),
              )),
            ),
          )
        ],
      ),
    );
  }
}
