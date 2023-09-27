import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/widgets/text_style.dart';

Widget dashboardButton(context,{title,count,icon}){
  var size=MediaQuery.of(context).size;
  return  Row(
    children: [
      Image.asset(
        icon,
        width: 40,
        color: Colors.white,
      ),
      Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              boldText(text: title, size: 16.0),
              boldText(text: count, size: 20.0),
            ],
          )),

    ],
  )
      .box
      .color(purpleColor)
      .rounded
      .size(size.width*0.4, 80)
      .padding(const EdgeInsets.all(8))
      .make();
}