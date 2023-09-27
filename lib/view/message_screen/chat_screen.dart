import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/view/message_screen/component/chat_bubble.dart';
import 'package:get/get.dart';

import '../../widgets/text_style.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
        title: normalText(text: chat, size: 16.0, color: fontGrey),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 20,
            itemBuilder: (context, index) {
              return chatBubble();
            },
          )),
          10.heightBox,
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: const InputDecoration(
                    isDense: true,
                    hintText: "Enter message",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: purpleColor)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: purpleColor)),
                  ),
                )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: purpleColor,
                    )),
              ],
            ).box.padding(const EdgeInsets.all(12)).make(),
          )
        ],
      ),
    );
  }
}
