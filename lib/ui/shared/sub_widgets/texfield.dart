// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:loignassess1/ui/shared/style_sheet/app_color.dart';
import 'package:loignassess1/ui/shared/style_sheet/text_styles.dart';

class TextFieldWrite extends StatelessWidget {
  const TextFieldWrite({Key? key, required this.hintText}) : super(key: key);
  final String hintText;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.06,
      child: TextFormField(
        // textAlign: TextAlign.,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: kDescriptionBold,
            filled: true,
            fillColor: kcInputColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
