import 'package:flutter/material.dart';
import 'dart:html';
import 'profile_card.dart';
import 'package:flutter/services.dart';
import 'utilities/styles.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';

void main() {
  runApp(A7_webprofile());
}

class A7_webprofile extends StatelessWidget {
  const A7_webprofile({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A7 Profile Page',
      theme: STDesign().ST_theme_light(),
      darkTheme: STDesign().ST_theme_dark(),
      // themeMode: EasyDynamicTheme.of(context).themeMode!,
      home: const A7_profile_page(),
    );
  }
}

class A7_profile_page extends StatefulWidget {
  const A7_profile_page({Key? key}) : super(key: key);

  @override
  State<A7_profile_page> createState() => _A7_profile_pageState();
}

class _A7_profile_pageState extends State<A7_profile_page> {
  PageController? _pageController;
  @override
  void initState() {
    super.initState();
    // SystemChrome.setPreferredOrientations([
    //   // DeviceOrientation.landscapeRight,
    //   DeviceOrientation.landscapeLeft,
    // ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        // appBar: AppBar(
        //   title: const Text("A7 Profile Page"),
        // ),
        body: PageView(
          children: [A7_prof_card_container()],
          controller: _pageController,
          scrollDirection: Axis.vertical,
        ));
  }
}

class A7_prof_card_container extends StatelessWidget {
  const A7_prof_card_container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.80,
        width: MediaQuery.of(context).size.width * 0.90,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: A7_Card());
  }
}
