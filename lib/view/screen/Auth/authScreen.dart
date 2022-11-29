import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleproject/background/authBackgroundDesign.dart';
import 'package:sampleproject/controller/Auth/authScreen_controller.dart';
import 'package:sampleproject/core/constant/SizeConfig.dart';
import 'package:sampleproject/core/theme/Theme.dart';
import 'package:sampleproject/view/widget/Auth/appLogo.dart';
import 'package:sampleproject/view/widget/Auth/bottomText.dart';
import 'package:sampleproject/view/widget/Auth/inputTextFaild.dart';
import 'package:sampleproject/view/widget/Auth/myButton.dart';

class authScreen extends StatefulWidget {
  @override
  State<authScreen> createState() => _authScreenState();
}

class _authScreenState extends State<authScreen> {
  AuthScreenControllerImp authScreenControllerImp = AuthScreenControllerImp();

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AuthScreenControllerImp());
    return CustomPaint(
      painter: authBackgroundDesign(),
      child: Scaffold(
          // resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: GetBuilder<AuthScreenControllerImp>(
            builder: (authScreenControllerImp) => SafeArea(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    appLogo(titleSize: 40, thicknessSize: 2),
                    Card(
                      elevation: 10,
                      margin: EdgeInsets.only(
                        top: SizeConfig(context).heigthScreen / 25,
                        left: SizeConfig(context).widthScreen / 20,
                        right: SizeConfig(context).widthScreen / 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        height:
                            authScreenControllerImp.authMode == AuthMode.SignUp
                                ? SizeConfig(context).heigthScreen / 1.5
                                : SizeConfig(context).heigthScreen / 1.66,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                  authScreenControllerImp.authMode ==
                                          AuthMode.SignUp
                                      ? 'SIGN UP'
                                      : 'LOGIN',
                                  style: Themes().headline1),
                              const SizedBox(
                                height: 20,
                              ),
                              AnimatedOpacity(
                                duration: const Duration(milliseconds: 400),
                                opacity: authScreenControllerImp.authMode ==
                                        AuthMode.SignUp
                                    ? 1
                                    : 0,
                                child: Visibility(
                                  visible: authScreenControllerImp.authMode ==
                                      AuthMode.SignUp,
                                  child: inputTextFaild(
                                    textEditingController:
                                        authScreenControllerImp
                                            .userNameController,
                                    iconData: Icons.person_outline,
                                    labelText: 'User name',
                                  ),
                                ),
                              ),
                              inputTextFaild(
                                textEditingController:
                                    authScreenControllerImp.emailController,
                                iconData: Icons.email_outlined,
                                labelText: 'E-mail',
                              ),
                              inputTextFaild(
                                textEditingController:
                                    authScreenControllerImp.passwordContoller,
                                iconData: Icons.lock_outline,
                                labelText: 'Password',
                              ),
                              Visibility(
                                visible: authScreenControllerImp.authMode ==
                                    AuthMode.Login,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 5, top: 30),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    // margin:
                                    //     const EdgeInsets.only(right: 5, top: 30),
                                    child: GestureDetector(
                                      onTap: () {
                                        authScreenControllerImp
                                            .forgetPassword();
                                      },
                                      child: const Text(
                                        'Forget Password ..?!',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: authScreenControllerImp.authMode ==
                                        AuthMode.SignUp
                                    ? SizeConfig(context).heigthScreen / 15
                                    : SizeConfig(context).heigthScreen / 20,
                              ),
                              myButton(
                                title: authScreenControllerImp.authMode ==
                                        AuthMode.SignUp
                                    ? 'SIGN UP'
                                    : 'LOGIN',
                                Function: () {
                                  authScreenControllerImp.submitInfo();
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    bottomText(
                      title: authScreenControllerImp.authMode == AuthMode.SignUp
                          ? 'Already have an account ?! '
                          : 'Don\'t have an account ?! ',
                      subTitle:
                          authScreenControllerImp.authMode == AuthMode.SignUp
                              ? 'LOGIN'
                              : 'Sign up',
                      function: () async {
                        setState(() {});

                        authScreenControllerImp.changeAuthMode();
                      },
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
