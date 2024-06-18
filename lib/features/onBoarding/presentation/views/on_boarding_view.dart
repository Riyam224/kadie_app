// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName = "onBoarding";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ObBoardingViewBody(),
    );
  }
}

class ObBoardingViewBody extends StatelessWidget {
  const ObBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/13.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 800,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: SizedBox(
                    width: 100,
                    height: 60,
                    child: ElevatedButton(
                      // todo
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'login');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff003246)),
                      child: const Text(
                        'skip it ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
        SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    'assets/images/7.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 700,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'a candle like no other non-toxic refreshing scent A mélange of mélange of Sea Salt, fresh Orchid and blooming Night Jasmine.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff550018),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, 'login');
                    },
                    child: Text('skip',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
