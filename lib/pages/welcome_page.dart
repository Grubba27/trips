import 'package:flutter/material.dart';
import 'package:flutter_cubit/models/page_model.dart';
import 'package:flutter_cubit/widgets/carrossel_page.dart';



class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  final List<PageModel> pageContent = [
    PageModel("welcome-one.png", "Viaje", "Para as Montanhas",
        "Conhecer a natureza além de te dar a sensação de liberdade te fará muito mais feliz como pessoa."),
    PageModel("welcome-two.png", "Viva", "Os seus sonhos",
        "Essa experiencia mudará sua vida de formas que nunca antes você sentiu."),
    PageModel("welcome-three.png", "Aprenda", "Sobre as culturas",
        "Isso é único e apenas conhecendo outros lugares te darão isso."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: pageContent.length,
          itemBuilder: (_, index) {
            return AppCarrossel(
              page: pageContent[index],
              currentIndex: index,
              pagesNumber: pageContent.length,
            );
          }),
    );
  }
}
