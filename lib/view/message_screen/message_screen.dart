import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/view/message_screen/chat_screen.dart';
import 'package:e_commerce_seller/widgets/text_style.dart';
import 'package:get/get.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

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
        title: normalText(text: message, size: 16.0, color: fontGrey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(20, (index) =>
                ListTile(
                  onTap: () {
                    Get.to(() => const ChatScreen());},
                  leading: const CircleAvatar(backgroundColor: purpleColor,
                    child: Icon(Icons.person, color: white,),
                  ),
                  title: boldText(text: name, color: fontGrey),
                  subtitle: normalText(text: "last message", color: darkGrey),
                  trailing: normalText(text: "10:40", color: darkGrey),
                ),
            ),
          ),
        ),
      ),
    );
  }
}
