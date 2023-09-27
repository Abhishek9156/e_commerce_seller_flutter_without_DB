import 'package:e_commerce_seller/const/const.dart';
import 'package:e_commerce_seller/widgets/text_style.dart';

Widget customTextField({label,hint,contoller,isDes=false}){
  return TextFormField(
maxLines: isDes?4 :1,
    decoration: InputDecoration(
      isDense: true,
      label: normalText(text: label),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Colors.white,

        )
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.white,
          )
      ),hintText: hint,
      hintStyle: const TextStyle(color: lightGrey)
    )

  );
}