import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prosthesis/international_providers.dart';
import 'package:prosthesis/local_providers.dart';
import 'package:prosthesis/login.dart';
import 'package:prosthesis/prosthesis_info.dart';
import 'package:prosthesis/rehabilitation.dart';
import 'package:prosthesis/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    const Dashboard(),
  );
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String name = 'Tia';

  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> slider = [
    SizedBox(
      height: getHeight(200),
      child: Image.asset(
        "assets/icon/dashboard/slider1.png",
      ),
    ),
    SizedBox(
      height: getHeight(200),
      child: Image.asset(
        "assets/icon/dashboard/slider1.png",
      ),
    ),
    SizedBox(
      height: getHeight(200),
      child: Image.asset(
        "assets/icon/dashboard/slider1.png",
      ),
    ),
  ];

  DateTime now = DateTime.now();

  String printDate = DateFormat("EEEE, dd MMMM yyyy").format(
    DateTime.now(),
  );

  Widget menus({
    required String image,
    required String menuTitle,
    required Widget widget,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.to(Builder(builder: (context) => widget));
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(20),
            width: getWidth(70),
            height: getHeight(70),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                width: getWidth(1),
                color: graycolor,
              ),
            ),
            child: SvgPicture.asset(
              image,
              color: orangecolor,
            ),
          ),
        ),
        Text(
          menuTitle,
          style: blacktTextStyle.copyWith(
              fontSize: getWidth(12), fontWeight: normal),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget article({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            image,
            width: getWidth(156),
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(
          height: getHeight(5),
        ),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: blacktTextStyle.copyWith(
            fontSize: getWidth(18),
            fontWeight: bold,
          ),
        ),
        Text(
          subtitle,
          style: blacktTextStyle.copyWith(
            fontSize: getWidth(14),
            fontWeight: normal,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whitecolor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: getHeight(8)),
            padding: EdgeInsets.all(getHeight(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hello, ",
                              style: blacktTextStyle.copyWith(
                                fontSize: getWidth(24),
                                fontWeight: medium,
                              ),
                            ),
                            Text(
                              "$name!",
                              style: blacktTextStyle.copyWith(
                                fontSize: getWidth(24),
                                fontWeight: bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          printDate,
                          style:
                              blacktTextStyle.copyWith(fontSize: getWidth(16)),
                        )
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(() => const Login());
                      },
                      child: Image.asset(
                        "assets/icon/dashboard/profile1.png",
                        height: getHeight(40),
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                CarouselSlider(
                  items: slider,
                  carouselController: _controller,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          _current = index;
                        },
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: slider.asMap().entries.map(
                    (entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: getWidth(8),
                          height: getHeight(8),
                          margin: EdgeInsets.symmetric(
                              vertical: getHeight(8), horizontal: getWidth(4)),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(2),
                            color: (Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? whitecolor
                                    : orangecolor)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
                SizedBox(
                  height: getHeight(16),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(5)),
                  height: getHeight(52),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F0F0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: TextField(
                      maxLines: 1,
                      style: blacktTextStyle.copyWith(fontSize: getWidth(16)),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        filled: false,
                        prefixIcon: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: getHeight(14)),
                          child: SvgPicture.asset(
                            "assets/icon/dashboard/Search.svg",
                            color: const Color.fromRGBO(54, 60, 60, 0.5),
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        fillColor:
                            Theme.of(context).inputDecorationTheme.fillColor,
                        contentPadding: EdgeInsets.zero,
                        hintText: 'Search anything here',
                        hintStyle: blacktTextStyle.copyWith(
                          color: const Color.fromRGBO(54, 60, 60, 0.5),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Text(
                  "Menus",
                  style: blacktTextStyle.copyWith(
                    fontSize: getWidth(20),
                    fontWeight: bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: getHeight(5)),
                  child: Row(
                    children: [
                      menus(
                        image: "assets/icon/dashboard/Paper.svg",
                        menuTitle: "Prosthesis\nInformation",
                        widget: const ProsthesisInfo(),
                      ),
                      const Spacer(),
                      menus(
                        image: "assets/icon/dashboard/Call.svg",
                        menuTitle: "Local\nProviders",
                        widget: const LocalProviders(),
                      ),
                      const Spacer(),
                      menus(
                        image: "assets/icon/dashboard/Calling.svg",
                        menuTitle: "International\nProviders",
                        widget: const InterProviders(),
                      ),
                      const Spacer(),
                      menus(
                        image: "assets/icon/dashboard/Heart.svg",
                        menuTitle: "Prosthesis\nRehabilitation",
                        widget: const Rehabilitation(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Row(
                  children: [
                    Text(
                      "Articles",
                      style: blacktTextStyle.copyWith(
                        fontSize: getWidth(20),
                        fontWeight: bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "See more",
                        style: orangetTextStyle.copyWith(
                          fontSize: getWidth(14),
                          fontWeight: bold,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      article(
                        image: "assets/icon/dashboard/artikel.png",
                        title: "Kaki Palsu Prostetik",
                        subtitle: "lorem ipsum dolor sit",
                      ),
                      const Spacer(),
                      article(
                        image: "assets/icon/dashboard/artikel1.png",
                        title: "Manfaat Kaki Palsu",
                        subtitle: "lorem ipsum dolor sit",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
