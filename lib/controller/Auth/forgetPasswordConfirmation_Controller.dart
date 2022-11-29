import 'package:get/get.dart';
import 'package:sampleproject/core/constant/routes.dart';

abstract class forgetPasswordConfirmationController extends GetxController {
  successfullyScreen();
  goToLogin();
  resetPassword();
}

class forgetPasswordConfirmationControllerImp
    extends forgetPasswordConfirmationController {
  @override
  successfullyScreen() {
    Get.offAllNamed(AppRoute.resetPasswordSuccessfully);
  }

  @override
  goToLogin() {
    Get.offAllNamed(
      AppRoute.authScreen,
    );
  }

  @override
  resetPassword() {
    Get.offNamed(AppRoute.changePasswordScreen);
  }
}
