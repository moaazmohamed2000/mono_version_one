import 'package:flutter/material.dart';
import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/global_widget__manager.dart';
import 'package:mono_ui/core/strings_manager.dart';
import 'package:mono_ui/core/values_manager.dart';
import 'package:mono_ui/features/auth/presentation/Widget/widget.dart';

class VerificationView extends StatefulWidget {
  const VerificationView({Key? key}) : super(key: key);

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {
  TextEditingController noController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ImageAssets.arrowBackAppBarIcon,
        title: const Text(AppStrings.verificationAppBarString),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p10 * 6,
                  vertical: AppPadding.p10 * 6,
                ),
                child: Text(
                  AppStrings.bodyString,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      height: AppSize.s1_5, letterSpacing: AppSize.s1_5 / 4),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i <= 3; i++)
                    Padding(
                      padding: const EdgeInsets.only(left: AppSize.s10),
                      child: SizedBox(
                        width: AppSize.s10 * 4.5,
                        height: AppSize.s10 * 4,
                        child: buildTextFormFieldWithoutBg(
                          context,
                          controller: noController,
                          keyboardType: TextInputType.number,
                          roundedRectangleBorder: AppSize.s10 * 1.2,
                          color: ColorManager.activeDotColor,
                        ),
                      ),
                    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppPadding.p10 * 1.5,
                  bottom: AppPadding.p10 * 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    textButton(
                      text: AppStrings.verificationResendAppBarString,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: FontSize.s10 * 1.4),
                      onPressed: () {},
                    ),
                    Text(
                      AppStrings.verificationTimerAppBarString,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(color: ColorManager.primaryColor),
                    ),
                  ],
                ),
              ),
              defaultButton(
                context,
                text: AppStrings.verificationConfirmAppBarString,
                onPressedFunction: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
