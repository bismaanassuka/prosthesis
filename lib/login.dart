import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prosthesis/register.dart';
import 'package:prosthesis/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: SafeArea(
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/icon/sign_inup/bg_image.jpg",
                      fit: BoxFit.contain,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Positioned(
                        child: AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          automaticallyImplyLeading: true,
                          leading: IconButton(
                            icon: const Icon(Icons.arrow_back_ios_new_rounded),
                            onPressed: () {
                              Get.to(
                                () => const Dashboard(),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: getHeight(390),
                        color: Colors.transparent,
                        // color: orangecolor,
                        padding: EdgeInsets.fromLTRB(
                            getWidth(20), getHeight(120), getWidth(190), 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Prosthetic Go",
                              style: whitetTextStyle.copyWith(
                                fontSize: getWidth(16),
                                fontWeight: normal,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: const Offset(1, 1),
                                    blurRadius: 1,
                                    color: blackcolor,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getHeight(5),
                            ),
                            Text(
                              "Strength is not something you have, it’s something you find",
                              style: whitetTextStyle.copyWith(
                                fontSize: getWidth(24),
                                fontWeight: bold,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: const Offset(1, 1),
                                    blurRadius: 1,
                                    color: blackcolor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: whitecolor,
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: getHeight(5),
                              ),
                              Text(
                                "Log in",
                                style: blacktTextStyle.copyWith(
                                    fontSize: getWidth(20), fontWeight: bold),
                              ),
                              SizedBox(
                                height: getHeight(30),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                                height: getHeight(50),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF0F0F0),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: TextField(
                                    maxLines: 1,
                                    style: blacktTextStyle.copyWith(
                                      fontSize: getWidth(16),
                                    ),
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      filled: false,
                                      suffixIcon: Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: getHeight(14),
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/icon/sign_inup/Message.svg",
                                          color: const Color.fromRGBO(
                                              54, 60, 60, 0.5),
                                        ),
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25),
                                        ),
                                      ),
                                      fillColor: Theme.of(context)
                                          .inputDecorationTheme
                                          .fillColor,
                                      contentPadding: EdgeInsets.zero,
                                      hintText: 'Email Address',
                                      hintStyle: blacktTextStyle.copyWith(
                                        color: const Color.fromRGBO(
                                            54, 60, 60, 0.5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getHeight(15),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                                height: getHeight(50),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF0F0F0),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: TextField(
                                    obscureText: true,
                                    enableSuggestions: false,
                                    autocorrect: false,
                                    maxLines: 1,
                                    style: blacktTextStyle.copyWith(
                                      fontSize: getWidth(16),
                                    ),
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      filled: false,
                                      suffixIcon: Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: getHeight(14),
                                        ),
                                        child: SvgPicture.asset(
                                          "assets/icon/sign_inup/Hide.svg",
                                          color: const Color.fromRGBO(
                                              54, 60, 60, 0.5),
                                        ),
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25),
                                        ),
                                      ),
                                      fillColor: Theme.of(context)
                                          .inputDecorationTheme
                                          .fillColor,
                                      contentPadding: EdgeInsets.zero,
                                      hintText: 'Password',
                                      hintStyle: blacktTextStyle.copyWith(
                                        color: const Color.fromRGBO(
                                            54, 60, 60, 0.5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getHeight(15),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(
                                    () => const Dashboard(),
                                  );
                                },
                                child: Container(
                                  height: getHeight(50),
                                  decoration: BoxDecoration(
                                    color: orangecolor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: whitetTextStyle.copyWith(
                                        fontSize: getWidth(20),
                                        fontWeight: normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getHeight(30),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Dashboard(),
                                    ),
                                  );
                                },
                                child: Center(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Text(
                                      "Forgot password",
                                      style: blacktTextStyle.copyWith(
                                          fontSize: getWidth(16),
                                          fontWeight: bold,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: getHeight(20),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Dont have an account?",
                                    style: blacktTextStyle.copyWith(
                                      fontSize: getWidth(16),
                                      fontWeight: bold,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(
                                        () => const Register(),
                                      );
                                    },
                                    child: Text(
                                      " Register",
                                      style: orangetTextStyle.copyWith(
                                          fontSize: getWidth(16),
                                          fontWeight: bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
