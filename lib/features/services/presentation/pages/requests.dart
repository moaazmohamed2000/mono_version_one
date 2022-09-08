import 'package:flutter/material.dart';
import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/strings_manager.dart';
import 'package:mono_ui/features/auth/presentation/Widget/widget.dart';
import 'package:mono_ui/features/services/presentation/widget/widget.dart';

class RequestView extends StatefulWidget {
  const RequestView({Key? key}) : super(key: key);

  @override
  State<RequestView> createState() => _RequestViewState();
}

class _RequestViewState extends State<RequestView> {
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            if (id == 0)
                              Container(
                                height: 50,
                                width: 100,
                                color: ColorManager.blue,
                                // margin: const EdgeInsets.only(bottom: 30),
                              ),
                            textButton(
                              text: 'waiting',
                              style: Theme.of(context).textTheme.titleSmall,
                              onPressed: () {
                                setState(() {
                                  id = 0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            if (id == 1)
                              Container(
                                height: 50,
                                width: 100,
                                color: ColorManager.blue,
                                // margin: const EdgeInsets.only(bottom: 30),
                              ),
                            textButton(
                              text: 'working',
                              style: Theme.of(context).textTheme.titleSmall,
                              onPressed: () {
                                setState(() {
                                  id = 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            if (id == 2)
                              Container(
                                height: 50,
                                width: 100,
                                color: ColorManager.blue,
                                // margin: const EdgeInsets.only(bottom: 30),
                              ),
                            textButton(
                              text: 'Finished',
                              style: Theme.of(context).textTheme.titleSmall,
                              onPressed: () {
                                setState(() {
                                  id = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 0.3,
                  width: double.infinity,
                  color: ColorManager.darkBlack,
                  margin: const EdgeInsets.only(bottom: 30),
                ),
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
                      if (id == 0)
                        statusBtn(
                          context,
                          color: ColorManager.blue,
                          onPressedFunction: () {},
                          text: AppStrings.onHoldString,
                        ),
                      if (id == 1)
                        statusBtn(
                          context,
                          color: ColorManager.primaryColor,
                          onPressedFunction: () {},
                          text: AppStrings.workString,
                        ),
                      if (id == 2)
                        statusBtn(
                          context,
                          color: ColorManager.error,
                          onPressedFunction: () {},
                          text: AppStrings.finishedString,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
