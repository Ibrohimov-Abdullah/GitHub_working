import 'package:flutter/material.dart';
import 'package:github_working/Register/Pages/register_page.dart';

void main() {
  runApp(App());

 // Firdavsi
  /// MVP -
  /// MVVM
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}
