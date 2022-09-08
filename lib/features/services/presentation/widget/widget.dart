import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/global_widget__manager.dart';
import 'package:mono_ui/core/strings_manager.dart';
import 'package:mono_ui/core/values_manager.dart';

Widget textFormFieldAppBar(context) => SizedBox(
      height: AppSize.s10 * 3.8,
      width: AppSize.s10 * 22.8,
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
            borderSide: const BorderSide(color: Color(0xFFF2F2F2)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFF2F2F2)),
          ),
        ),
      ),
    );

Widget statusBtn(context,
        {required Color color, required text, required onPressedFunction}) =>
    defaultButton(
      context,
      text: text.toUpperCase(),
      onPressedFunction: onPressedFunction,
      width: 100,
      height: 35,
      borderRadius: 8,
      color: color,
    );

Widget seeAllWidget(context, {onPressed}) => TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(AppSize.s10 * 3, AppSize.s10 * 3),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.centerLeft,
      ),
      onPressed: onPressed,
      child: Text(
        AppStrings.seeAllString,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 12),
      ),
    );

Widget serviceItem(context) => Row(
      children: [
        Container(
          width: 120.0,
          height: 78.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(ImageAssets.spaceJoy),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 78,
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    AppStrings.designOfChildrenString,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 15, height: 2),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ),
                Text(
                  AppStrings.interiorDesignString,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 12, color: ColorManager.darkBlack2),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 78,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.eg256String,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.amber, size: 12),
                  Icon(Icons.star, color: Colors.amber, size: 12),
                  Icon(Icons.star, color: Colors.amber, size: 12),
                  Icon(Icons.star, color: Colors.grey, size: 12),
                ],
              ),
              statusBtn(
                context,
                color: ColorManager.primaryColor,
                onPressedFunction: () {},
                text: AppStrings.bookString,
              ),
            ],
          ),
        ),
      ],
    );

Widget typeAndSeeAllBtn(context, {required type, onPressed}) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            type,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const Spacer(),
          seeAllWidget(context, onPressed: onPressed),
        ],
      ),
    );
