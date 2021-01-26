import 'package:flutter/material.dart';
import 'package:padang_kos/pages/splash_page.dart';
import 'package:padang_kos/providers/space_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}
