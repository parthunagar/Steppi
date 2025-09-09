library on_boarding_view;

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:steppi/ui/views/on_boarding/on_boarding_view_model.dart';
part 'on_boarding_mobile.dart';
part 'on_boarding_tablet.dart';
part 'on_boarding_desktop.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardingViewModel>.reactive(
      viewModelBuilder: () => OnBoardingViewModel(),
      onModelReady: (model) {
        // Do something once your model is initialized
      },
      builder: (context, model, child) {
        return ScreenTypeLayout(
          mobile: _OnBoardingMobile(model),
          desktop: _OnBoardingDesktop(model),
          tablet: _OnBoardingTablet(model),
        );
      },
    );
  }
}
