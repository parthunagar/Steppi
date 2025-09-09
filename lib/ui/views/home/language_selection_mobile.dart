part of language_selection_view;

class _LanguageSelectionMobile extends StatelessWidget {
  final LanguageSelectionViewModel viewModel;

  const _LanguageSelectionMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(title: const Text('Mobile'), backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [

              Container(
                height: 160,
                width: 200,
                // color: AppColor.whiteColor,
                child: Stack(
                  // alignment: Alignment.center,
                  children: [
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        alignment: Alignment.center,
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.scaffoldBackgroundColor,
                            width: 5,
                          ),
                          shape: BoxShape.circle,

                          color: AppColor.redColor,
                        ),
                        child: Transform.translate(
                          offset: const Offset(7,-4),
                          child: const FaIcon(
                            FontAwesomeIcons.personWalking,
                            color: AppColor.whiteColor,
                            size: 75,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        alignment: Alignment.center,
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.scaffoldBackgroundColor,
                            width: 5,
                          ),
                          shape: BoxShape.circle,
                          color: AppColor.yellowColor,
                        ),
                        child: const FaIcon(
                          FontAwesomeIcons.personWalking,
                          color: AppColor.whiteColor,
                          size: 75,
                        ),
                      ),
                    ),

                    // Positioned(
                    //   bottom: 0,
                    //   child: FaIcon(
                    //     FontAwesomeIcons.solidComments,
                    //     color: AppColor.yellowColor,
                    //     size: 95,
                    //   ),
                    // ),
                    // Positioned(
                    //   right: 0,
                    //   child: FaIcon(
                    //     FontAwesomeIcons.solidComments,
                    //     color: AppColor.redColor,
                    //     size: 95,
                    //   ),
                    // ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('English'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('عربي'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 15,
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 15,
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                  // CustomIndicator(
                  //   netDragPercent: dragDistance,
                  //   pagesLength: pagesLength,

                  //   indicator: Indicator(
                  //     // activeIndicator: ActiveIndicator(color: Colors.grey, borderWidth: 0.7),
                  //     indicatorDesign: IndicatorDesign.line(

                  //       lineDesign: LineDesign(
                  //         // lineWidth: 30,
                  //         // lineSpacer: 50,
                  //         lineType: DesignType.line_uniform,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // viewModel.index == pagesLength - 1
                  //     ? viewModel.signupButton
                  //     : viewModel.skipButton(setIndex: setIndex)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
