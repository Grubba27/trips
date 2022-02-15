import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_header.dart';
import 'package:flutter_cubit/widgets/app_larg_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 60, left: 13, right: 20),
                child: AppHeader()),
            Container(
                padding: const EdgeInsets.only(left: 13, right: 17),
                child: AppLargeText(text: "Descubra")),
            SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 0),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicator:
                    CircleIndicator(color: AppColors.mainColor, radius: 4),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: "Lugares",
                  ),
                  Tab(
                    text: "Inspirações",
                  ),
                  Tab(
                    text: "Emoções",
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only( top: 10),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext ctx, int index){
                      return Container(
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    "img/mountain.jpeg"
                                ),
                                fit: BoxFit.cover
                            )
                        ),
                      );
                    },
                  ),
                  Tab(
                    text: "Inspirações",
                  ),
                  Tab(
                    text: "Emoções",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleIndicator extends Decoration {
  final Color color;
  double radius;

  CircleIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
