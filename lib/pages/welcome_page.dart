import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_larg_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

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

  Page(String this.bg, String this.title, String this.subtitle,
      String this.text);
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
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("img/" + pageContent[index].bg))),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: pageContent[index].title),
                        AppText(text: pageContent[index].subtitle, size: 30),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 250,
                          child: AppText(
                            text: pageContent[index].text,
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
