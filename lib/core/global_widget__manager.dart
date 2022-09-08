import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/values_manager.dart';

navigateTo(context, Widget widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
navigateAndReplacementNamed(context, widget) => Navigator.pushReplacementNamed(
      context,
      widget,
    );

Widget textFormFieldAppBar(context) => SizedBox(
      height: AppSize.s10 * 3.8,
      width: AppSize.s10 * 25,
      child: TextFormField(
        controller: TextEditingController(),
        keyboardType: TextInputType.text,
        validator: (value) {
          return null;
        },
        onFieldSubmitted: (value) {},
        style: Theme.of(context).textTheme.headlineSmall,
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.grey, fontWeight: FontWeightManager.light),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(AppPadding.p10 * .8),
            child: SvgPicture.asset(ImageAssets.search),
          ),
          suffixIcon: const Icon(
            Icons.filter_list_rounded,
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s10),
            borderSide:const BorderSide(color: Color(0xFFF2F2F2)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFF2F2F2)),
          ),
        ),
      ),
    );
defaultButton(
  context, {
  required String text,
  required Function()? onPressedFunction,
  double width = AppSize.s10 * 31.2,
  Color color = ColorManager.primaryColor,
  double height = AppSize.s10 * 4.6,
  double fontSizeText = AppSize.s10 * 1.4,
  double borderRadius = AppSize.s10 * 3,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: onPressedFunction,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );


Widget buildTextFormFieldWithoutBg(
  context, {
  required TextEditingController controller,
  required TextInputType keyboardType,
  String? Function(String?)? validateFunction,
  Function(String)? onFieldSubmittedFunction,
  double roundedRectangleBorder = AppSize.s10 * 2.6,
  Color? color,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: color,
      validator: validateFunction,
      onFieldSubmitted: onFieldSubmittedFunction,
      style: Theme.of(context).textTheme.headlineSmall,
      decoration: InputDecoration(
        // * text style *
        labelStyle: TextStyle(color: ColorManager.grey, fontSize: FontSize.s10),
        // * border style *
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(roundedRectangleBorder),
          borderSide: BorderSide(color: color!, width: AppSize.s1_5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(roundedRectangleBorder),
          borderSide: BorderSide(color: color, width: AppSize.s1_5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(roundedRectangleBorder),
          borderSide: BorderSide(color: color, width: AppSize.s1_5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(roundedRectangleBorder),
          borderSide: BorderSide(color: color, width: AppSize.s1_5),
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(roundedRectangleBorder),
            borderSide: BorderSide(color: color)),
      ),
    );

