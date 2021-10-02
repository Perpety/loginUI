// import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:loignassess1/ui/shared/style_sheet/app_color.dart';
import 'package:loignassess1/ui/shared/style_sheet/text_styles.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.8,
      height: _size.height * 0.06,
      decoration: BoxDecoration(
          color: kcSecondaryColor.withOpacity(0.8),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: kcPrimaryColor.withOpacity(0.55),
                spreadRadius: 0.1,
                blurRadius: 10,
                offset: Offset(10, 10))
          ]),
      child: MaterialButton(
        elevation: 2,
        onPressed: press,
        child: Text(
          text,
          style: kButText,
        ),
      ),
    );
  }
}
