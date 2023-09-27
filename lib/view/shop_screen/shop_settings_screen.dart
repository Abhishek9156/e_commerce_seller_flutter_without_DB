import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/widgets/custom_textfield.dart';

import '../../widgets/text_style.dart';

class ShopSettings extends StatelessWidget {
  const ShopSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: normalText(text: shopSetting, size: 16.0),
        actions: [TextButton(onPressed: () {}, child: normalText(text: save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextField(label: shopName,hint: nameHint),
            10.heightBox,
            customTextField(label: address,hint: shopAddressHint),
            10.heightBox,
            customTextField(label: mobile,hint: shopMobileHint),
            10.heightBox,
            customTextField(label: website,hint: shopWebsiteHint),
            10.heightBox,
            customTextField(label: description,hint: shopDescHint,isDes: true),
          ],
        ),
      ),
    );
  }
}
