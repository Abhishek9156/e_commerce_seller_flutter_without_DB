import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/widgets/text_style.dart';

Widget productDropDown() {
  return DropdownButtonHideUnderline(
    child: DropdownButton(
      hint: normalText(color: fontGrey,text: "choose category"),
      value: null,
      isExpanded: true,
      items: [],
      onChanged: (value) {},
    ),
  ).box.white.roundedSM.padding(EdgeInsets.symmetric(horizontal: 4)).make();
}
