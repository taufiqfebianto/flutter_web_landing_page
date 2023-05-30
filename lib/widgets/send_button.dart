import 'package:flutter/material.dart';

import '../utils/responsive_layout.dart';

class SendBtn extends StatelessWidget {
  const SendBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 88, 113, 159),
              Color(0xFF3023AE),
            ], begin: Alignment.bottomRight, end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xFF6078ea).withOpacity(.3),
                  offset: const Offset(0.0, 8.0),
                  blurRadius: 8.0)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Notify",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat-Bold",
                          fontSize: ResponsiveLayout.isSmallScreen(context)
                              ? 12
                              : ResponsiveLayout.isMediumScreen(context)
                                  ? 12
                                  : 16,
                          letterSpacing: 1.0)),
                  SizedBox(
                    width: ResponsiveLayout.isSmallScreen(context)
                        ? 4
                        : ResponsiveLayout.isMediumScreen(context)
                            ? 6
                            : 8,
                  ),
                  FlutterLogo(
                    // "assets/sent.png",
                    // color: Colors.white,
                    size: ResponsiveLayout.isSmallScreen(context)
                        ? 12
                        : ResponsiveLayout.isMediumScreen(context)
                            ? 12
                            : 20,
                    // height: ResponsiveLayout.isSmallScreen(context)
                    //     ? 12
                    //     : ResponsiveLayout.isMediumScreen(context)
                    //         ? 12
                    //         : 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
