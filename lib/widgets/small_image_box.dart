import 'package:flutter/cupertino.dart';
import 'package:flutter_cubit/models/icons_model.dart';

import '../misc/colors.dart';
import 'app_text.dart';

class AppSmallImageBox extends StatelessWidget {
  final List<IconModel> iconModel;
  final int index;

  const AppSmallImageBox(
      {Key? key, required this.iconModel, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 22),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 90,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(iconModel[index].icon), fit: BoxFit.fill),
                color: iconModel[index].color,
                borderRadius: BorderRadius.circular(20)),
          ),
          AppText(
            text: iconModel[index].text,
            color: AppColors.textColor2,
          )
        ],
      ),
    );
  }
}
