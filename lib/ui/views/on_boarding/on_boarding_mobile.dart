part of on_boarding_view;

class _OnBoardingMobile extends StatelessWidget {
final OnBoardingViewModel viewModel;
const _OnBoardingMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(title: const Text('Mobile'), backgroundColor: Colors.black),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(
                'Skip',
                style: Theme.of(context)
                    .textTheme
                    .overline!,
              ),
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
      // body: Onboarding(
      //   pages: viewModel.onboardingPagesList,
      //   onPageChange: (int pageIndex) {
      //     viewModel.index = pageIndex;
      //   },
      //   startPageIndex: 0,
      //   footerBuilder: (context, dragDistance, pagesLength, setIndex) {
      //     return DecoratedBox(
      //       decoration: BoxDecoration(
      //         color: background,
      //         border: Border.all(
      //           width: 0.0,
      //           color: background,
      //         ),
      //       ),
      //       child: ColoredBox(
      //         color: background,
      //         child: Padding(
      //           padding: const EdgeInsets.all(45.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Row(
      //                 children: [
      //                   Container(
      //                     width: 15,
      //                     height: 3,
      //                     decoration: BoxDecoration(
      //                         color: Colors.white,
      //                         borderRadius: BorderRadius.circular(10)),
      //                   ),
      //                   const SizedBox(width: 5),
      //                   Container(
      //                     width: 15,
      //                     height: 3,
      //                     decoration: BoxDecoration(
      //                         color: Colors.white,
      //                         borderRadius: BorderRadius.circular(10)),
      //                   ),
      //                   const SizedBox(width: 5),
      //                   Container(
      //                     width: 15,
      //                     height: 3,
      //                     decoration: BoxDecoration(
      //                         color: Colors.white,
      //                         borderRadius: BorderRadius.circular(10)),
      //                   ),

      //                 ],
      //               ),
      //               // CustomIndicator(
      //               //   netDragPercent: dragDistance,
      //               //   pagesLength: pagesLength,

      //               //   indicator: Indicator(
      //               //     // activeIndicator: ActiveIndicator(color: Colors.grey, borderWidth: 0.7),
      //               //     indicatorDesign: IndicatorDesign.line(

      //               //       lineDesign: LineDesign(
      //               //         // lineWidth: 30,
      //               //         // lineSpacer: 50,
      //               //         lineType: DesignType.line_uniform,
      //               //       ),
      //               //     ),
      //               //   ),
      //               // ),
      //               viewModel.index == pagesLength - 1
      //                   ? viewModel.signupButton
      //                   : viewModel.skipButton(setIndex: setIndex)
      //             ],
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}