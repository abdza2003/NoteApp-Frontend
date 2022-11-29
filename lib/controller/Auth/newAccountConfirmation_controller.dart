import 'package:get/get.dart';
import 'package:sampleproject/core/constant/routes.dart';

abstract class newAccountConfirmationController extends GetxController {
  successfullyScreen();
  goToLogin();
}

class newAccountConfirmationControllerImp
    extends newAccountConfirmationController {
  @override
  successfullyScreen() {
    Get.offAllNamed(AppRoute.createdNewAccountSuccessfully);
  }

  @override
  goToLogin() {
    Get.offAllNamed(
      AppRoute.authScreen,
    );
  }
}
