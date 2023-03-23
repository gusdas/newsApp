import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        // title: const Text(
        //   'App Bar 3',
        //   style: TextStyle(color: Colors.black),
        // ),
        // centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '회원가입',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '이메일',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: '이메일을 입력해주세요',
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xffD9D9D9))),
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '비밀번호',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: '비밀번호를 입력해주세요',
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xffD9D9D9))),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffffed00),
                foregroundColor: const Color(0xffD9D9D9),
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24), // <-- Radius
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
        ],
      ),
    );
  }
}
