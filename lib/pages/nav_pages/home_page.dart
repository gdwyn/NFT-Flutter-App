import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_tutorial_nft/pages/detail_page.dart';
import 'package:yt_tutorial_nft/widgets/appLargeText.dart';
import 'package:yt_tutorial_nft/widgets/appText.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var image = {
      "vrAR.png": "VR",
      "3d.png": "3D",
      "abstract.png": "Abstract",
      "portrait.png": "Portrait",
      "gif.png": "Gif"
    };

    List allImages = [
      "sharknft.webp",
      "ape2.jpeg",
      "milad.jpeg",
      "ape4.webp",
      "nenad-novakovic-L2QB-rG5NM0-unsplash.jpg",
    ];
    TabController _tabController = TabController(length: 4, vsync: this);

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 0, right: 0, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //first row (Image and bell icon)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage("images/profile.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Icon(
                        Iconsax.notification,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 35,
                ),

                //explore text
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: AppLargeText(text: "Explore Art"),
                ),

                SizedBox(
                  height: 20,
                ),

                //tabBar
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      labelPadding: EdgeInsets.only(left: 20, right: 20),
                      controller: _tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator:
                          CircleTabIndicator(color: Colors.blue, radius: 4),
                      tabs: [
                        Tab(
                          text: "All",
                        ),
                        Tab(
                          text: "Art",
                        ),
                        Tab(
                          text: "Music",
                        ),
                        Tab(
                          text: "Blockchain",
                        ),
                      ],
                    ),
                  ),
                ),

                //Tab Bar View
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  height: 290,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      //first nft
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: allImages.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: (() {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) => DetailPage()),
                                ),
                              );
                            }),
                            child: Stack(
                              children: [
                                // Image container
                                Positioned(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      right: 15,
                                    ),
                                    width: 200,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "images/" + allImages[index],
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),

                                // overlay
                                Positioned(
                                  child: Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.black26,
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.black.withOpacity(0),
                                            Color.fromARGB(255, 31, 31, 41)
                                                .withOpacity(1)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                    ),
                                  ),
                                ),

                                // Overlay text
                                Positioned(
                                  bottom: 20,
                                  left: 16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppLargeText(
                                        text: "Big Shark",
                                        size: 25,
                                        color: Colors.white,
                                      ),

                                      //

                                      SizedBox(
                                        height: 2,
                                      ),

                                      //

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image(
                                            image: AssetImage("images/eth.png"),
                                          ),
                                          SizedBox(width: 8),
                                          AppLargeText(
                                            text: "3.4 ETH",
                                            color: Colors.white,
                                            size: 18,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),

                      //second page (Art)
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15),
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("images/ape3.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),

                      //third page (Music)
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15),
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("images/ape4.webp"),
                                  fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),

                      //fourth page (Blockchain)
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15),
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("images/ape2.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                //Discover more
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppLargeText(
                        text: "Discover more",
                        size: 20,
                      ),
                      AppText(text: "See all", size: 14),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //icon categories

                Container(
                  height: 100,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: image.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.blue[50],
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/" + image.keys.elementAt(index),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20, top: 10),
                            child: AppText(
                              text: image.values.elementAt(index),
                              size: 13,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});

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
        configuration.size!.width / 2, configuration.size!.height + radius - 8);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
