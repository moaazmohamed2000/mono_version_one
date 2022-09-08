import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/strings_manager.dart';
import 'package:mono_ui/features/services/presentation/widget/widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: typeAndSeeAllBtn(context,
                type: AppStrings.categoriesString, onPressed: () {}),
          ),
          Container(
            padding: const EdgeInsets.only(left: 35, top: 15, bottom: 20),
            height: 110.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Column(
                children: [
                  SvgPicture.asset(
                    AppStrings.categoriesItems[index]['image']!,
                    height: 48.0,
                    width: 48.0,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    AppStrings.categoriesItems[index]['text']!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: FontSize.s10 * 1.4),
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 62.0),
              itemCount: AppStrings.categoriesItems.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                typeAndSeeAllBtn(context,
                    type: AppStrings.offersAndPackagesString, onPressed: () {}),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  height: 168,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        ImageAssets.livingRoom,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        AppStrings.designOfChildrenString,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const Spacer(),
                      Text(
                        AppStrings.eg256String,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    AppStrings.interiorDesignString,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 12, color: ColorManager.darkBlack2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(ImageAssets.livingRoom),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                        child: Text(
                          AppStrings.designerIbrahimString,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      statusBtn(
                        context,color: ColorManager.primaryColor,
                        onPressedFunction: () {},
                        text: AppStrings.bookString,
                      ),
                    ],
                  ),
                ),
                typeAndSeeAllBtn(context,
                    type: AppStrings.differentServicesString, onPressed: () {}),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => serviceItem(context),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15.0),
                  itemCount: 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
