import 'package:flutter/material.dart';
import 'package:loignassess1/constants/strings.dart';
import 'package:loignassess1/ui/shared/main_widgets/ui_background.dart';
import 'package:loignassess1/ui/shared/style_sheet/app_color.dart';
import 'package:loignassess1/ui/shared/style_sheet/text_styles.dart';
import 'package:loignassess1/ui/shared/sub_widgets/main_button.dart';
import 'package:loignassess1/ui/views/welcome/welcome_viewmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return ViewModelBuilder<WelcomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          body: Container(
        child: Stack(
          children: [
            MainUi(),
            Positioned(
              top: 140,
              // left: 50,
              child: Container(
                width: _size.width,
                height: _size.height,
                // color: kcPrimaryColor,
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: _size.width * 0.8,
                      height: _size.height * 0.3,
                      // color: kcSecondaryColor,
                      child: Image.asset('assets/img2.png')
                    ),
                    SizedBox(
                      height: _size.height * 0.06,
                    ),
                    Container(
                      width: _size.width * 0.7,
                      // height: _size.height * 0.1,
                      child: Text(
                        DescriptionBold,
                        style: kDescriptionBold,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.03,
                    ),
                    Container(
                      width: _size.width * 0.5,
                      // height: _size.height * 0.1,
                      child: Text(
                        DescriptionNormal,
                        style: kDescriptionNormal,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.08,
                    ),
                    MainButton(
                      press: () {
                        model.goToLogin();
                      },
                      text: ButText1,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
      viewModelBuilder: () => WelcomeViewModel(),
    );
  }
}
