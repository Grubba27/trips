import 'package:flutter/material.dart';
import 'package:flutter_cubit/widgets/carrossel_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class Page {
  String bg;
  String title;
  String subtitle;
  String text;

  Page(this.bg, this.title, this.subtitle, this.text);
}

class _WelcomePageState extends State<WelcomePage> {
  List<Page> pageContent = [
    Page("welcome-one.png", "Viaje", "Para as Montanhas",
        "Conhecer a natureza além de te dar a sensação de liberdade te fará muito mais feliz como pessoa."),
    Page("welcome-two.png", "Viva", "Os seus sonhos",
        "Essa experiencia mudará sua vida de formas que nunca antes você sentiu."),
    Page("welcome-three.png", "Aprenda", "Sobre as culturas",
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
              bg: pageContent[index].bg,
              title: pageContent[index].title,
              subtitle: pageContent[index].subtitle,
              text: pageContent[index].text,
              currentIndex: index,
              pagesNumber: pageContent.length,
            );
          }),
    );
  }
}
