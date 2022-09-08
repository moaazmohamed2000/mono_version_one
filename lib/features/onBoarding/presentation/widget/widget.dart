 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono_ui/core/values_manager.dart';
import 'package:mono_ui/features/onBoarding/domain/entities/on_boarding_entities.dart';

buildOnBoardingItem(OnBoardingModel boardingModel, context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            width: AppSize.s10 * 21.5,
            height: AppSize.s10 * 21.1,
            boardingModel.image!,
          ),
          const SizedBox(height: AppSize.s10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPadding.p10 * 2),
            child: Text(
              boardingModel.title!,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10 * 6),
            child: Text(
              boardingModel.body!,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  height: AppSize.s1_5, letterSpacing: AppSize.s1_5 / 4),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );