import 'package:flutter/material.dart';
import 'package:loignassess1/constants/strings.dart';
import 'package:loignassess1/ui/shared/main_widgets/ui_background.dart';
import 'package:loignassess1/ui/shared/style_sheet/app_color.dart';
import 'package:loignassess1/ui/shared/style_sheet/text_styles.dart';
import 'package:loignassess1/ui/shared/sub_widgets/main_button.dart';
import 'package:loignassess1/ui/shared/sub_widgets/texfield.dart';
import 'package:loignassess1/ui/views/signin/signin_viewmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return ViewModelBuilder<SignInViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          body: Container(
        child: Stack(
          children: [
            MainUi(),
            Positioned(
              top: 140,
              // left: 50,
              child: SingleChildScrollView(
                child: Container(
                  width: _size.width,
                  height: _size.height,
                  // color: kcPrimaryColor,
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // height: _size.height * 0.1,
                        child: Text(
                          WelcomeBold,
                          style: kDescriptionBold,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        // height: _size.height * 0.02,
                      ),
                      Container(
                        width: _size.width * 0.8,
                        height: _size.height * 0.3,
                        // color: kcSecondaryColor,
                        child: Image.asset('assets/img1.png')
                      ),
                      SizedBox(
                        // height: _size.height * 0.05,
                      ),
                      Container(
                        child: Column(
                          children: [
                            TextFieldWrite(
                              hintText: 'Username',
                            ),
                            SizedBox(
                              height: _size.height * 0.03,
                            ),
                            TextFieldWrite(
                              hintText: 'Password',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _size.height * 0.02,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          SubText8,
                          style: kForgot,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: _size.height * 0.02,
                      ),
                      MainButton(
                        press: () {
                          model.goBackToWelcome();
                        },
                        text: ButText3,
                      ),
                      SizedBox(
                        height: _size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            SubText,
                            style: kSubText,
                          ),
                          SizedBox(),
                          TextButton(
                            onPressed: () {
                              model.goToSignUp();
                            },
                            child: Text(
                              SubText3,
                              style: kSign,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
      viewModelBuilder: () => SignInViewModel(),
    );
  }
}
