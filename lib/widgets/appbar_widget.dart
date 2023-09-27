import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;
AppBar appBarWidget(title){
  return  AppBar(
    backgroundColor: white,
    automaticallyImplyLeading: false,
    title: normalText(text: title, size: 16.0, color: fontGrey),
    actions: [
      Center(
        child: normalText(
            text: intl.DateFormat('EEE, d MMM yyyy').format(DateTime.now()),
            color: darkGrey),
      ),
      10.widthBox,
    ],
  );
}