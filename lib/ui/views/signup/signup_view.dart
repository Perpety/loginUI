import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:loignassess1/constants/strings.dart';
import 'package:loignassess1/ui/shared/main_widgets/ui_background.dart';
import 'package:loignassess1/ui/shared/style_sheet/text_styles.dart';
import 'package:loignassess1/ui/shared/sub_widgets/main_button.dart';
import 'package:loignassess1/ui/shared/sub_widgets/texfield.dart';
import 'package:loignassess1/ui/views/signup/signup_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return ViewModelBuilder<SignUpViewModel>.reactive(
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
                      width: _size.width,
                      child: Text(
                        WelcomeBold,
                        style: kDescriptionBold,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: _size.height * 0.03,
                    ),
                    Text(
                      WelcomeNormal,
                      style: kDescriptionNormal,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: _size.height * 0.06,
                    ),
                    Container(
                      child: Column(
                        children: [
                          TextFieldWrite(
                            hintText: 'Name',
                          ),
                          SizedBox(
                            height: _size.height * 0.03,
                          ),
                          TextFieldWrite(
                            hintText: 'Email',
                          ),
                          SizedBox(
                            height: _size.height * 0.03,
                          ),
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
                      height: _size.height * 0.06,
                    ),
                    MainButton(
                      press: () {
                        model.goToLogin();
                      },
                      text: ButText2,
                    ),
                    SizedBox(
                      height: _size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          SubText1,
                          style: kSubText,
                        ),
                        SizedBox(
                            // width: _size.width * 0.01,
                            ),
                        TextButton(
                          onPressed: () {
                            model.goToLogin();
                          },
                          child: Text(
                            SubText2,
                            style: kSign,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
      viewModelBuilder: () => SignUpViewModel(),
    );
  }
}
