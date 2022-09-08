import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/global_widget__manager.dart';
import 'package:mono_ui/core/routes_manager.dart';
import 'package:mono_ui/core/strings_manager.dart';
import 'package:mono_ui/core/values_manager.dart';
import 'package:mono_ui/features/auth/presentation/Widget/widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool registered = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: registered == true
            ? Text(
                AppStrings.signInAppBarString,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            : Text(
                AppStrings.signUpAppBarString,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
      ),
      body: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10 * 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: AppPadding.p10 * 1.9, top: AppPadding.p10),
                    child: textButton(
                      text: registered == true
                          ? AppStrings.signInWelcomeString
                          : AppStrings.signUpWelcomeString,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(color: ColorManager.primaryColor),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              buildTextFormField(
                context,
                label: AppStrings.phoneLabelString,
                hintText: AppStrings.phoneHintString,
                keyboardType: TextInputType.number,
                controller: phoneController,
                validateFunction: (value) {
                  return null;
                },
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: AppSize.s10 * 4,
                    child: SvgPicture.asset(ImageAssets.phone),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSize.s10 * 3),
                child: Column(
                  children: [
                    buildTextFormField(
                      context,
                      label: AppStrings.passwordLabelString,
                      hintText: AppStrings.passwordHintString,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: passwordController,
                      validateFunction: (value) {
                        return null;
                      },
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: AppSize.s10 * 4,
                          child: SvgPicture.asset(ImageAssets.eyeOff),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        textButton(
                          text: AppStrings.forgotPasswordHintString,
                          onPressed: () {
                            navigateAndReplacementNamed(
                                context, Routes.forgotPassword);
                          },
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: FontSize.s10 * 1.2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              defaultButton(
                context,
                text: registered == true
                    ? AppStrings.signInButtonString
                    : AppStrings.signUpButtonString,
                onPressedFunction: () {},
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: AppPadding.p10 * 3),
                child: Column(
                  children: [
                    Text(
                      AppStrings.socialMediaLabelString,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: FontSize.s10 * 1.4),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: SvgPicture.asset(ImageAssets.google),
                        ),
                        SizedBox(
                          width: AppSize.s10 * 5.7,
                          child: TextButton(
                            onPressed: () {},
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(AppPadding.p10 * .5),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      AppSize.s10,
                                    ),
                                    side: const BorderSide(
                                      color: ColorManager.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              child: SvgPicture.asset(ImageAssets.facebook),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          registered == true
                              ? AppStrings.noHaveAccountString
                              : AppStrings.haveAccountString,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: FontSize.s10 * 1.4),
                        ),
                        textButton(
                          text: registered == true
                              ? AppStrings.createAccountString
                              : AppStrings.signInButtonString,
                          onPressed: () {
                            setState(() {
                              registered = !registered;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              defaultButtonWithoutBg(
                context,
                text: AppStrings.guestButtonString,
                onPressedFunction: () {
                  navigateAndReplacementNamed(
                    context,
                    Routes.layout,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }


}
