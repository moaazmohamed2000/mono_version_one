import 'package:flutter/material.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/values_manager.dart';

Widget buildTextFormField(
  context, {
  required TextEditingController controller,
  required TextInputType keyboardType,
  bool obscureText = false,
  String? Function(String?)? validateFunction,
  Function(String)? onFieldSubmittedFunction,
  required String label,
  String? hintText,
  Widget? suffixIcon,
  Function()? functionSuffix,
  Color? color,
}) =>
    TextFormField(
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      cursorColor: color,
      validator: validateFunction,
      onFieldSubmitted: onFieldSubmittedFunction,
      style: Theme.of(context).textTheme.headlineSmall,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: label,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headlineSmall,
        labelStyle: Theme.of(context).textTheme.headlineSmall,
        suffixIcon: IconButton(
          onPressed: functionSuffix,
          icon: suffixIcon!,
        ),
      ),
    );

Widget textButton({
  text,
  onPressed,
  style,
  textAlign,
}) =>
    TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: style,
        textAlign: textAlign,
      ),
    );

defaultButtonWithoutBg(
  context, {
  required String text,
  required Function()? onPressedFunction,
  double width = AppSize.s10 * 31.2,
  Color color = ColorManager.primaryColor,
  double height = AppSize.s10 * 4.6,
  double roundedRectangleBorder = AppSize.s10 * 2.6,
}) =>
    SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(AppPadding.p10 * 1.5),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                roundedRectangleBorder,
              ),
              side: BorderSide(
                color: color,
              ),
            ),
          ),
        ),
        onPressed: onPressedFunction,
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: ColorManager.primaryColor,
              ),
        ),
      ),
    );
