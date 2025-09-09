library language_selection_view;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:steppi/ui/views/home/language_selection_view_model.dart';
import 'package:steppi/utils/color_util.dart';
import 'dart:math' as math;


part 'language_selection_mobile.dart';
part 'language_selection_tablet.dart';
part 'language_selection_desktop.dart';
class LanguageSelectionView extends StatelessWidget {
  const LanguageSelectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LanguageSelectionViewModel>.reactive(
      viewModelBuilder: () => LanguageSelectionViewModel(),
      onModelReady: (model) {
        // Do something once your model is initialized
      },
      builder: (context, model, child) {
        return ScreenTypeLayout(
          mobile: _LanguageSelectionMobile(model),
          desktop: _LanguageSelectionDesktop(model),
          tablet: _LanguageSelectionTablet(model),  
        );
      }
    );
  }
}