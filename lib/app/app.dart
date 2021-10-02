import 'package:loignassess1/ui/views/signin/signin_view.dart';
import 'package:loignassess1/ui/views/signup/signup_view.dart';
import 'package:loignassess1/ui/views/welcome/welcome_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: WelcomeView, initial: true),
    MaterialRoute(page: SignInView),
    MaterialRoute(page: SignUpView),
    
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {}