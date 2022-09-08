import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/core/colors_manager.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: ColorManager.darkBlack,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 45,
                  backgroundColor: ColorManager.activeDotColor,
                  child: CircleAvatar(
                    radius: 43,
                    backgroundImage: AssetImage(ImageAssets.profile),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
            child: Column(
              children: [
                rowWidget(
                  context,
                  icon: SvgPicture.asset(ImageAssets.wallet),
                  text: 'wallet',
                  onTap: () {},
                ),
                rowWidget(
                  context,
                  icon: SvgPicture.asset(ImageAssets.address),
                  text: 'address',
                  onTap: () {},
                ),
                rowWidget(
                  context,
                  icon: SvgPicture.asset(ImageAssets.favorites),
                  text: 'favorites',
                  onTap: () {},
                ),
                rowWidget(
                  context,
                  icon: SvgPicture.asset(ImageAssets.share),
                  text: 'share code',
                  onTap: () {},
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  width: double.infinity,
                  height: 0.2,
                  color: ColorManager.darkGrey,
                ),
                rowWidget(
                  context,
                  icon: SvgPicture.asset(ImageAssets.about),
                  text: 'about mono',
                  onTap: () {},
                ),
                rowWidget(
                  context,
                  icon: SvgPicture.asset(ImageAssets.contact),
                  text: 'contact us',
                  onTap: () {},
                ),
                rowWidget(
                  context,
                  icon: SvgPicture.asset(ImageAssets.setting),
                  text: 'setting',
                  onTap: () {},
                ),
                rowWidget(
                  context,
                  icon: SvgPicture.asset(ImageAssets.signOut),
                  text: 'sign Out',
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  rowWidget(context, {required icon, required text, required onTap}) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              icon,
              const SizedBox(width: 15),
              Text(
                text,
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
        ),
      );

}
