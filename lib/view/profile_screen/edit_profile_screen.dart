import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/widgets/custom_textfield.dart';

import '../../widgets/text_style.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: normalText(text: editProfile, size: 16.0),
        actions: [TextButton(onPressed: () {}, child: normalText(text: save))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              imgsProduct,
              width: 150,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor:Colors.white),
                child: normalText(text: changeImage, color: fontGrey)),
            10.heightBox,
             const Divider(color: Colors.white),
            customTextField(label: name,hint: nameHint),
            10.heightBox,
            customTextField(label: password,hint: passwordHint),
            10.heightBox,
            customTextField(label: confpassword,hint: passwordHint),
          ],
        ),
      ),
    );
  }
}
