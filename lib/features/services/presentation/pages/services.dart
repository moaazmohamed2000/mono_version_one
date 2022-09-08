import 'package:flutter/material.dart';
import 'package:mono_ui/core/colors_manager.dart';
import 'package:mono_ui/core/global_widget__manager.dart';
import 'package:mono_ui/features/auth/presentation/Widget/widget.dart';
import 'package:mono_ui/features/services/presentation/widget/widget.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  int currentIndex = 0;
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
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
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => serviceItem(context),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20.0),
                  itemCount: 4,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: defaultButton(
              context,
              text: '+ add a new services',
              onPressedFunction: () {},
            ),
          )
        ],
      ),
    );
  }
}
