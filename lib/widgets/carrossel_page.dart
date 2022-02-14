import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

import 'app_larg_text.dart';
import 'app_text.dart';

class AppCarrossel extends StatelessWidget {
  String bg;
  String title;
  String subtitle;
  String text;
  int pagesNumber;
  int currentIndex;

  AppCarrossel(
      {Key? key,
      required this.bg,
      required this.title,
      required this.subtitle,
      required this.text,
      required this.pagesNumber,
      required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("img/" + bg))),
      child: Container(
        margin: const EdgeInsets.only(top: 120, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(text: title),
                AppText(text: subtitle, size: 30),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 40),
                  width: 250,
                  child: AppText(
                    text: text,
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
