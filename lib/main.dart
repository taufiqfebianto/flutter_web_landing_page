import 'package:flutter/material.dart';
import 'package:flutter_web_landing_page/utils/responsive_layout.dart';

import 'widgets/navbar.dart';
import 'widgets/search.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFF8FBFF),
        Color(0xFFFCFDFD),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(), const Body()],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: FlutterLogo(size: 80,),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: const EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Hello!",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                          color: Color(0xFF8591B0))),
                  RichText(
                    text: const TextSpan(
                        text: "WellCome To ",
                        style:
                            TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                        children: [
                          TextSpan(
                              text: "Flutter Web",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87))
                        ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0, top: 20),
                    child: Text("LET’S EXPLORE THE WORLD"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Search()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Hello!",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),
            ),
            RichText(
              text: const TextSpan(
                text: 'WellCome To ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Flutter Web',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, top: 20),
              child: Text("LET’S EXPLORE THE WORLD"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
                child: FlutterLogo(
              size: 200,
            )),
            const SizedBox(
              height: 32,
            ),
            const Search(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
