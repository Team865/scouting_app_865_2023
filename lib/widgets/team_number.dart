import 'package:flutter/material.dart';
import 'package:scouting_app_865_2023/pages/generator.dart';

class TeamNumber extends StatefulWidget {
  const TeamNumber({super.key});

  @override
  TeamNumberState createState() => TeamNumberState();
}

class TeamNumberState extends State<TeamNumber> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Team Number - GROUP

    return SizedBox(
        width: 332,
        height: 144,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 332,
                  height: 144,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    color: Color.fromRGBO(33, 47, 73, 1),
                  ))),
          Positioned(
              top: 83,
              left: 15,
              child: Container(
                  width: 303,
                  height: 44,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: SizedBox(
                            width: 303,
                            height: 44,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 303,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(9),
                                          topRight: Radius.circular(9),
                                          bottomLeft: Radius.circular(9),
                                          bottomRight: Radius.circular(9),
                                        ),
                                        color:
                                            const Color.fromRGBO(26, 38, 58, 1),
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              204, 204, 204, 1),
                                          width: 3,
                                        ),
                                      ))),
                            ]))),
                    Positioned(
                        top: 43.5,
                        left: 0,
                        child: Container(
                            width: 303,
                            height: 0.5,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(
                                  60, 60, 67, 0.29019609093666077),
                            ))),
                    Positioned(
                        top: 12,
                        left: 16,
                        child: Container(
                            width: 2,
                            height: 21,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2),
                                topRight: Radius.circular(2),
                                bottomLeft: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                              ),
                              color: Color.fromRGBO(0, 122, 255, 1),
                            ))),
                    Positioned(
                        top: 11,
                        left: 18,
                        child: SizedBox(
                            width: 300,
                            child: TextFormField(
                                controller:
                                    GeneratorPageState.teamController))),
                  ]))),
          const Positioned(
              top: 23,
              left: 120.5,
              child: Text(
                'Team',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Inter',
                    fontSize: 36,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}
