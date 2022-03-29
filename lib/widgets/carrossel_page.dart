import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/models/page_model.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

import 'app_larg_text.dart';
import 'app_text.dart';

class AppCarrossel extends StatelessWidget {
  final PageModel page;
  final int currentIndex;
  final int pagesNumber;

  AppCarrossel(
      {Key? key, required this.page, required this.currentIndex, required this.pagesNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("img/" + page.bg))),
      child: Container(
        margin: const EdgeInsets.only(top: 120, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(text: page.title),
                AppText(text: page.subtitle, size: 30),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 40),
                  width: 250,
                  child: AppText(
                    text: page.text,
                    color: AppColors.textColor2,
                    size: 14,
                  ),
                ),
                ResponsiveButton(
                  width: 120,
                )
              ],
            ),
            Column(
              children: List.generate(pagesNumber, (indexDots) {
                return Container(
                  margin: EdgeInsets.only(bottom: 2),
                  width: 8,
                  height: currentIndex == indexDots ? 25 : 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: currentIndex == indexDots
                          ? AppColors.mainColor
                          : AppColors.mainColor.withOpacity(0.8)),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
