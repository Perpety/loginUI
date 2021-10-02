import 'package:loignassess1/app/app.locator.dart';
import 'package:loignassess1/app/app.logger.dart';
import 'package:loignassess1/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignInViewModel extends BaseViewModel {
  final log = getLogger("WelcomeViewModel");
  final _navigationService = locator<NavigationService>();
  // final

  void goToSignUp() {
    _navigationService.navigateTo(Routes.signUpView);
  }

  void goBackToWelcome() {
    _navigationService.navigateTo(Routes.welcomeView);
  }
}
