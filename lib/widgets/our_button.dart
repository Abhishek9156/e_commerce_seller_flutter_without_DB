import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/widgets/text_style.dart';

Widget ourButton({title, color = purpleColor, onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(12),
    ),
      onPressed: onPress, child: normalText(text: title, size: 16.0));
}
