import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:news_app/signup.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('images/SplashImg.png'),
      backgroundColor: Colors.white,
      nextScreen: const LoginPage(),
      splashIconSize: 1000,
      duration: 1000,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 1),
      pageTransitionType: PageTransitionType.fade,
    );
  }
}

Color color1 = _colorFromHex("b74093");

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/SplashImg.png"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "해외 뉴스의 모든 것",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "뉴칩스로 나의 성장을 기대해보세요.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const SignupPage();
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffffed00),
                          foregroundColor: const Color(0xffD9D9D9),
                          minimumSize: const Size(328, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(24), // <-- Radius
                          ),
                        ),
                        child: const Text(
                          '가입하기',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '이미 회원이신가요?',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          // color: Color(0xffFFFFFF),
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "로그인",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            // color: Color(0xffFFFFFF),
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ) // Foreground widget here
          ),
    );
  }
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
