import 'package:flutter/material.dart';
import 'package:kadie_app/core/helper_functions/on_generate_route.dart';
import 'package:kadie_app/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:kadie_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const KadieCandles());
}

class KadieCandles extends StatelessWidget {
  const KadieCandles({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
