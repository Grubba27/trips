import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final List<String> mountains;
  final int index;
  const ImageBox({Key? key, required this.mountains, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 13, right: 13),
      width: 200,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(mountains[index]), fit: BoxFit.cover)),
    );
  }
}
