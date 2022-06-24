import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prosthesis/dashboard.dart';
import 'package:prosthesis/theme.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const LocalProviders(
      // home: localproviders(),
      ));
}

class LocalProviders extends StatelessWidget {
  const LocalProviders({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        theme: ThemeData(fontFamily: 'Nunito'),
        home: const Scaffold(
          body: LocalProvider(),
        ),
      );
    });
  }
}

List<Map<String, String>> doctor = [
  {
    'image': 'assets/icon/providers/local/LD1.png',
    'name': 'Dr. Suparjo',
    'subtitle': 'subtitle',
    'special': 'Top Speciality Extrimity',
    'loc': 'Mojoroto (1.2 km)',
    'icon': 'assets/icon/providers/right1.svg',
  },
  {
    'image': 'assets/icon/providers/local/LD2.png',
    'name': 'Dr. Ammar',
    'subtitle': 'subtitle',
    'special': 'Bottom Speciality Extrimity',
    'loc': 'Gambiran (3.2 km)',
    'icon': 'assets/icon/providers/right1.svg',
  },
  {
    'image': 'assets/icon/providers/local/LD3.png',
    'name': 'Dr. Nathalia',
    'subtitle': 'subtitle',
    'special': 'Top & Bottom Extrimity',
    'loc': 'Kilisuci (4.2 km)',
    'icon': 'assets/icon/providers/right1.svg',
  },
  {
    'image': 'assets/icon/providers/local/LD4.png',
    'name': 'Dr. Joya',
    'subtitle': 'subtitle',
    'special': 'Bottom Speciality Extrimity',
    'loc': 'Bhayangkara (5.2 km)',
    'icon': 'assets/icon/providers/right1.svg',
  }
];

class LocalProvider extends StatefulWidget {
  const LocalProvider({Key? key}) : super(key: key);

  @override
  State<LocalProvider> createState() => _LocalProviderState();
}

class _LocalProviderState extends State<LocalProvider> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getHeight(50)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => const Dashboard());
                },
                child: SizedBox(
                  child: SvgPicture.asset(
                    'assets/icon/providers/left.svg',
                    width: getWidth(25),
                    height: getHeight(25),
                  ),
                ),
              ),
              const Spacer(),
              Text(
                'Local Providers',
                style: TextStyle(
                  color: const Color(0xff363C3C),
                  fontSize: getWidth(20),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              SizedBox(
                child: SvgPicture.asset(
                  'assets/icon/providers/filter.svg',
                  width: getWidth(25),
                  height: getHeight(25),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getHeight(25),
        ),
        Expanded(
          child: Column(
            children: [
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: doctor.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: getHeight(20)),
                          child: Container(
                            width: getWidth(360),
                            height: getHeight(110),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffD9D9D9).withOpacity(0.2),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: getWidth(110),
                                  height: getHeight(110),
                                  child: Image(
                                    image: AssetImage(
                                      '${doctor[index]['image']}',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: getWidth(15),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Spacer(),
                                    Text(
                                      '${doctor[index]['name']}',
                                      style: TextStyle(
                                        fontSize: getWidth(23),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: getHeight(2),
                                    ),
                                    Text(
                                      '${doctor[index]['subtitle']}',
                                      style: TextStyle(fontSize: getWidth(12)),
                                    ),
                                    SizedBox(
                                      height: getHeight(2),
                                    ),
                                    Text(
                                      '${doctor[index]['special']}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: getWidth(12),
                                      ),
                                    ),
                                    SizedBox(
                                      height: getHeight(2),
                                    ),
                                    Text(
                                      '${doctor[index]['loc']}',
                                      style: TextStyle(fontSize: getWidth(12)),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                const Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: getWidth(20)),
                                  child: Container(
                                    width: getWidth(40),
                                    height: getHeight(40),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xffDDDDDD),
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        '${doctor[index]['icon']}',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
