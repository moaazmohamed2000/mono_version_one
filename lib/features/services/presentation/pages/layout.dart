import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/global_widget__manager.dart';
import 'package:mono_ui/features/services/presentation/pages/home.dart';
import 'package:mono_ui/features/services/presentation/pages/profile.dart';
import 'package:mono_ui/features/services/presentation/pages/requests.dart';
import 'package:mono_ui/features/services/presentation/pages/services.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> with TickerProviderStateMixin {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomeView(),
    const ServicesView(),
    const RequestView(),
    const ProfileView(),
  ];

  getAppBar(context, {required int currentIndex}) {
    switch (currentIndex) {
      case 0:
        return homeAppBar(context);
      case 1:
        return servicesAppBar(context);
      case 2:
        return requestAppBar(context);
      case 3:
        return profileAppBar(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context, currentIndex: currentIndex),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(2.0),
              child: SvgPicture.asset(
                ImageAssets.home,
                width: 20,
                height: 20,
                color:
                    currentIndex == 0 ? ColorManager.orange : ColorManager.grey,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(2.0),
              child: SvgPicture.asset(
                ImageAssets.briefcase,
                width: 20,
                height: 20,
                color:
                    currentIndex == 1 ? ColorManager.orange : ColorManager.grey,
              ),
            ),
            label: 'My serveries',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(2.0),
              child: SvgPicture.asset(
                ImageAssets.shoppingCart,
                width: 20,
                height: 20,
                color:
                    currentIndex == 2 ? ColorManager.orange : ColorManager.grey,
              ),
            ),
            label: 'My requests',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(2.0),
              child: SvgPicture.asset(
                ImageAssets.user,
                width: 20,
                height: 20,
                color:
                    currentIndex == 3 ? ColorManager.orange : ColorManager.grey,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget homeAppBar(context) => AppBar(
        title: textFormFieldAppBar(context),
      );
  Widget servicesAppBar(context) => AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(Icons.arrow_back_ios_rounded, size: 20),
        ),
        title: Text(
          'my services',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: ColorManager.black),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 25),
            width: 53,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    ImageAssets.briefcase,
                    height: 32,
                  ),
                ),
                Container(
                  height: 18,
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    ImageAssets.ellipse,
                    width: 7,
                    height: 7,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  Widget requestAppBar(context) => AppBar(
        leading: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 20),
          child: SvgPicture.asset(
            ImageAssets.bell,
            width: 30,
            height: 30,
          ),
        ),
        title: textFormFieldAppBar(context),
        actions: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 25),
            width: 50,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    ImageAssets.vector,
                    height: 32,
                  ),
                ),
                Container(
                  height: 30,
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    ImageAssets.ellipse,
                    width: 9,
                    height: 9,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  Widget profileAppBar(context) => AppBar(
        backgroundColor: ColorManager.darkBlack,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.darkBlack,
          statusBarIconBrightness: Brightness.light,
        ),
      );
}
