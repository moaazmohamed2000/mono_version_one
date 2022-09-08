import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/global_widget__manager.dart';
import 'package:mono_ui/core/routes_manager.dart';
import 'package:mono_ui/core/strings_manager.dart';
import 'package:mono_ui/core/values_manager.dart';
import 'package:mono_ui/features/auth/presentation/Widget/widget.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // Group Value for Radio Button.
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: ImageAssets.arrowBackAppBarIcon,
          onPressed: () {
            navigateAndReplacementNamed(
              context,
              Routes.loginRoute,
            );
          },
        ),
        title: const Text(AppStrings.forgotPasswordAppBarString),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10 * 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: AppPadding.p10 * 5),
                    child: Row(
                      children: [
                        Radio(
                          activeColor: ColorManager.activeDotColor,
                          value: 1,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              id = 1;
                            });
                          },
                        ),
                        if (id == 1)
                          const Text(
                            AppStrings.emailString,
                            style: TextStyle(fontSize: FontSize.s10 * 1.7),
                          ),
                        if (id != 1)
                          const Text(
                            AppStrings.googleString,
                            style: TextStyle(fontSize: FontSize.s10 * 1.7),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: AppPadding.p10 * 5),
                    child: Row(
                      children: [
                        Radio(
                          activeColor: ColorManager.activeDotColor,
                          value: 2,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              id = 2;
                            });
                          },
                        ),
                        const Text(
                          AppStrings.phoneLabelString,
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSize.s10 * 4),
                child: id == 1
                    ? buildTextFormField(
                        context,
                        label: AppStrings.emailString,
                        hintText: AppStrings.emailHintString,
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        validateFunction: (value) {
                          return null;
                        },
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            height: AppSize.s10 * 4,
                            child: SvgPicture.asset(ImageAssets.mail),
                          ),
                        ),
                      )
                    : buildTextFormField(
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
              ),
              defaultButton(
                context,
                text: AppStrings.sendString,
                onPressedFunction: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
