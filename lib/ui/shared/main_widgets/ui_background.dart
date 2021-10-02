// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:loignassess1/ui/shared/style_sheet/app_color.dart';

class MainUi extends StatelessWidget {
  const MainUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Container(
      color: kcBackgroundColor,
      child: Stack(
        children: [
          Positioned(
            top: -45,
            left: -55,
            child: Container(
              width: _size.width * 0.5,
              height: _size.width * 0.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kcCircleColor,
              ),
            ),
          ),
          Positioned(
            top: -95,
            left: 16,
            child: Container(
              width: _size.width * 0.5,
              height: _size.width * 0.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kcCircleColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
