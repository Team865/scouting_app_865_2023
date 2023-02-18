import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/toggle_chip.dart';
import '../widgets/scoring_legend.dart';

class TeleopPage extends StatefulWidget {
  const TeleopPage({super.key});

  @override
  State<TeleopPage> createState() => _TeleopPageState();
}

enum TeleopHigh1 { none, cone }

enum TeleopHigh2 { none, cube }

enum TeleopHigh3 { none, cone }

enum TeleopHigh4 { none, cone }

enum TeleopHigh5 { none, cube }

enum TeleopHigh6 { none, cone }

enum TeleopHigh7 { none, cone }

enum TeleopHigh8 { none, cube }

enum TeleopHigh9 { none, cone }

enum TeleopMid1 { none, cone }

enum TeleopMid2 { none, cube }

enum TeleopMid3 { none, cone }

enum TeleopMid4 { none, cone }

enum TeleopMid5 { none, cube }

enum TeleopMid6 { none, cone }

enum TeleopMid7 { none, cone }

enum TeleopMid8 { none, cube }

enum TeleopMid9 { none, cone }

enum TeleopLow1 { none, cone, cube }

enum TeleopLow2 { none, cone, cube }

enum TeleopLow3 { none, cone, cube }

enum TeleopLow4 { none, cone, cube }

enum TeleopLow5 { none, cone, cube }

enum TeleopLow6 { none, cone, cube }

enum TeleopLow7 { none, cone, cube }

enum TeleopLow8 { none, cone, cube }

enum TeleopLow9 { none, cone, cube }

enum Defence { no, yes }

enum GroundIntake { no, yes }

enum SingleSubstationIntake { no, yes }

enum DoubleSubstationIntake { no, yes }

class _TeleopPageState extends State<TeleopPage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    void updateTeleopHigh1(TeleopHigh1 value) {
      setState(() {
        if (appState.teleopHigh1 == value) {
          appState.teleopHigh1 = TeleopHigh1.none;
        } else {
          appState.teleopHigh1 = value;
        }
      });
    }

    void updateTeleopHigh2(TeleopHigh2 value) {
      setState(() {
        if (appState.teleopHigh2 == value) {
          appState.teleopHigh2 = TeleopHigh2.none;
        } else {
          appState.teleopHigh2 = value;
        }
      });
    }

    void updateTeleopHigh3(TeleopHigh3 value) {
      setState(() {
        if (appState.teleopHigh3 == value) {
          appState.teleopHigh3 = TeleopHigh3.none;
        } else {
          appState.teleopHigh3 = value;
        }
      });
    }

    void updateTeleopHigh4(TeleopHigh4 value) {
      setState(() {
        if (appState.teleopHigh4 == value) {
          appState.teleopHigh4 = TeleopHigh4.none;
        } else {
          appState.teleopHigh4 = value;
        }
      });
    }

    void updateTeleopHigh5(TeleopHigh5 value) {
      setState(() {
        if (appState.teleopHigh5 == value) {
          appState.teleopHigh5 = TeleopHigh5.none;
        } else {
          appState.teleopHigh5 = value;
        }
      });
    }

    void updateTeleopHigh6(TeleopHigh6 value) {
      setState(() {
        if (appState.teleopHigh6 == value) {
          appState.teleopHigh6 = TeleopHigh6.none;
        } else {
          appState.teleopHigh6 = value;
        }
      });
    }

    void updateTeleopHigh7(TeleopHigh7 value) {
      setState(() {
        if (appState.teleopHigh7 == value) {
          appState.teleopHigh7 = TeleopHigh7.none;
        } else {
          appState.teleopHigh7 = value;
        }
      });
    }

    void updateTeleopHigh8(TeleopHigh8 value) {
      setState(() {
        if (appState.teleopHigh8 == value) {
          appState.teleopHigh8 = TeleopHigh8.none;
        } else {
          appState.teleopHigh8 = value;
        }
      });
    }

    void updateTeleopHigh9(TeleopHigh9 value) {
      setState(() {
        if (appState.teleopHigh9 == value) {
          appState.teleopHigh9 = TeleopHigh9.none;
        } else {
          appState.teleopHigh9 = value;
        }
      });
    }

    void updateTeleopMid1(TeleopMid1 value) {
      setState(() {
        if (appState.teleopMid1 == value) {
          appState.teleopMid1 = TeleopMid1.none;
        } else {
          appState.teleopMid1 = value;
        }
      });
    }

    void updateTeleopMid2(TeleopMid2 value) {
      setState(() {
        if (appState.teleopMid2 == value) {
          appState.teleopMid2 = TeleopMid2.none;
        } else {
          appState.teleopMid2 = value;
        }
      });
    }

    void updateTeleopMid3(TeleopMid3 value) {
      setState(() {
        if (appState.teleopMid3 == value) {
          appState.teleopMid3 = TeleopMid3.none;
        } else {
          appState.teleopMid3 = value;
        }
      });
    }

    void updateTeleopMid4(TeleopMid4 value) {
      setState(() {
        if (appState.teleopMid4 == value) {
          appState.teleopMid4 = TeleopMid4.none;
        } else {
          appState.teleopMid4 = value;
        }
      });
    }

    void updateTeleopMid5(TeleopMid5 value) {
      setState(() {
        if (appState.teleopMid5 == value) {
          appState.teleopMid5 = TeleopMid5.none;
        } else {
          appState.teleopMid5 = value;
        }
      });
    }

    void updateTeleopMid6(TeleopMid6 value) {
      setState(() {
        if (appState.teleopMid6 == value) {
          appState.teleopMid6 = TeleopMid6.none;
        } else {
          appState.teleopMid6 = value;
        }
      });
    }

    void updateTeleopMid7(TeleopMid7 value) {
      setState(() {
        if (appState.teleopMid7 == value) {
          appState.teleopMid7 = TeleopMid7.none;
        } else {
          appState.teleopMid7 = value;
        }
      });
    }

    void updateTeleopMid8(TeleopMid8 value) {
      setState(() {
        if (appState.teleopMid8 == value) {
          appState.teleopMid8 = TeleopMid8.none;
        } else {
          appState.teleopMid8 = value;
        }
      });
    }

    void updateTeleopMid9(TeleopMid9 value) {
      setState(() {
        if (appState.teleopMid9 == value) {
          appState.teleopMid9 = TeleopMid9.none;
        } else {
          appState.teleopMid9 = value;
        }
      });
    }

    void updateTeleopLow1(TeleopLow1 value) {
      setState(() {
        if (appState.teleopLow1 == value) {
          appState.teleopLow1 = TeleopLow1.none;
        } else {
          appState.teleopLow1 = value;
        }
      });
    }

    void updateTeleopLow2(TeleopLow2 value) {
      setState(() {
        if (appState.teleopLow2 == value) {
          appState.teleopLow2 = TeleopLow2.none;
        } else {
          appState.teleopLow2 = value;
        }
      });
    }

    void updateTeleopLow3(TeleopLow3 value) {
      setState(() {
        if (appState.teleopLow3 == value) {
          appState.teleopLow3 = TeleopLow3.none;
        } else {
          appState.teleopLow3 = value;
        }
      });
    }

    void updateTeleopLow4(TeleopLow4 value) {
      setState(() {
        if (appState.teleopLow4 == value) {
          appState.teleopLow4 = TeleopLow4.none;
        } else {
          appState.teleopLow4 = value;
        }
      });
    }

    void updateTeleopLow5(TeleopLow5 value) {
      setState(() {
        if (appState.teleopLow5 == value) {
          appState.teleopLow5 = TeleopLow5.none;
        } else {
          appState.teleopLow5 = value;
        }
      });
    }

    void updateTeleopLow6(TeleopLow6 value) {
      setState(() {
        if (appState.teleopLow6 == value) {
          appState.teleopLow6 = TeleopLow6.none;
        } else {
          appState.teleopLow6 = value;
        }
      });
    }

    void updateTeleopLow7(TeleopLow7 value) {
      setState(() {
        if (appState.teleopLow7 == value) {
          appState.teleopLow7 = TeleopLow7.none;
        } else {
          appState.teleopLow7 = value;
        }
      });
    }

    void updateTeleopLow8(TeleopLow8 value) {
      setState(() {
        if (appState.teleopLow8 == value) {
          appState.teleopLow8 = TeleopLow8.none;
        } else {
          appState.teleopLow8 = value;
        }
      });
    }

    void updateTeleopLow9(TeleopLow9 value) {
      setState(() {
        if (appState.teleopLow9 == value) {
          appState.teleopLow9 = TeleopLow9.none;
        } else {
          appState.teleopLow9 = value;
        }
      });
    }

    void updateDefence(Defence value) {
      setState(() {
        if (appState.defence == value) {
          appState.defence = Defence.no;
        } else {
          appState.defence = value;
        }
      });
    }

    void updateGroundIntake(GroundIntake value) {
      setState(() {
        if (appState.groundIntake == value) {
          appState.groundIntake = GroundIntake.no;
        } else {
          appState.groundIntake = value;
        }
      });
    }

    void updateSingleSubstationIntake(SingleSubstationIntake value) {
      setState(() {
        if (appState.singleSubstationIntake == value) {
          appState.singleSubstationIntake = SingleSubstationIntake.no;
        } else {
          appState.singleSubstationIntake = value;
        }
      });
    }

    void updateDoubleSubstationIntake(DoubleSubstationIntake value) {
      setState(() {
        if (appState.doubleSubstationIntake == value) {
          appState.doubleSubstationIntake = DoubleSubstationIntake.no;
        } else {
          appState.doubleSubstationIntake = value;
        }
      });
    }

    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ToggleChip(
                text: "Defence",
                onPressed: updateDefence,
                value: Defence.yes,
                selection: appState.defence,
                icon1: Icons.circle,
                icon2: Icons.circle_outlined),
            const SizedBox(height: 8),
            const Text("Robot intake position:"),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ToggleChip(
                  text: "Ground",
                  onPressed: updateGroundIntake,
                  value: GroundIntake.yes,
                  selection: appState.groundIntake,
                  icon1: Icons.circle,
                  icon2: Icons.circle_outlined),
              ToggleChip(
                  text: "Single substation",
                  onPressed: updateSingleSubstationIntake,
                  value: SingleSubstationIntake.yes,
                  selection: appState.singleSubstationIntake,
                  icon1: Icons.circle,
                  icon2: Icons.circle_outlined),
              ToggleChip(
                  text: "Double substation",
                  onPressed: updateDoubleSubstationIntake,
                  value: DoubleSubstationIntake.yes,
                  selection: appState.doubleSubstationIntake,
                  icon1: Icons.circle,
                  icon2: Icons.circle_outlined),
            ]),
            const SizedBox(height: 8),
            const ScoringLegend(),
            const Text("Teleop Pieces Scored:"),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopHigh1,
                        value: TeleopHigh1.cone,
                        selection: appState.teleopHigh1,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopMid1,
                        value: TeleopMid1.cone,
                        selection: appState.teleopMid1,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow1,
                        value: TeleopLow1.cone,
                        selection: appState.teleopLow1,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow1,
                        value: TeleopLow1.cube,
                        selection: appState.teleopLow1,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopHigh2,
                        value: TeleopHigh2.cube,
                        selection: appState.teleopHigh2,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopMid2,
                        value: TeleopMid2.cube,
                        selection: appState.teleopMid2,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow2,
                        value: TeleopLow2.cone,
                        selection: appState.teleopLow2,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow2,
                        value: TeleopLow2.cube,
                        selection: appState.teleopLow2,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopHigh3,
                        value: TeleopHigh3.cone,
                        selection: appState.teleopHigh3,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopMid3,
                        value: TeleopMid3.cone,
                        selection: appState.teleopMid3,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow3,
                        value: TeleopLow3.cone,
                        selection: appState.teleopLow3,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow3,
                        value: TeleopLow3.cube,
                        selection: appState.teleopLow3,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopHigh4,
                        value: TeleopHigh4.cone,
                        selection: appState.teleopHigh4,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopMid4,
                        value: TeleopMid4.cone,
                        selection: appState.teleopMid4,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow4,
                        value: TeleopLow4.cone,
                        selection: appState.teleopLow4,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow4,
                        value: TeleopLow4.cube,
                        selection: appState.teleopLow4,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopHigh5,
                        value: TeleopHigh5.cube,
                        selection: appState.teleopHigh5,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopMid5,
                        value: TeleopMid5.cube,
                        selection: appState.teleopMid5,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow5,
                        value: TeleopLow5.cone,
                        selection: appState.teleopLow5,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow5,
                        value: TeleopLow5.cube,
                        selection: appState.teleopLow5,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopHigh6,
                        value: TeleopHigh6.cone,
                        selection: appState.teleopHigh6,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopMid6,
                        value: TeleopMid6.cone,
                        selection: appState.teleopMid6,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow6,
                        value: TeleopLow6.cone,
                        selection: appState.teleopLow6,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow6,
                        value: TeleopLow6.cube,
                        selection: appState.teleopLow6,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopHigh7,
                        value: TeleopHigh7.cone,
                        selection: appState.teleopHigh7,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopMid7,
                        value: TeleopMid7.cone,
                        selection: appState.teleopMid7,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow7,
                        value: TeleopLow7.cone,
                        selection: appState.teleopLow7,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow7,
                        value: TeleopLow7.cube,
                        selection: appState.teleopLow7,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopHigh8,
                        value: TeleopHigh8.cube,
                        selection: appState.teleopHigh8,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopMid8,
                        value: TeleopMid8.cube,
                        selection: appState.teleopMid8,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow8,
                        value: TeleopLow8.cone,
                        selection: appState.teleopLow8,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow8,
                        value: TeleopLow8.cube,
                        selection: appState.teleopLow8,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopHigh9,
                        value: TeleopHigh9.cone,
                        selection: appState.teleopHigh9,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopMid9,
                        value: TeleopMid9.cone,
                        selection: appState.teleopMid9,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow9,
                        value: TeleopLow9.cone,
                        selection: appState.teleopLow9,
                        icon1: Icons.adobe,
                        icon2: Icons.change_history),
                    ToggleChip(
                        text: "",
                        onPressed: updateTeleopLow9,
                        value: TeleopLow9.cube,
                        selection: appState.teleopLow9,
                        icon1: Icons.square,
                        icon2: Icons.square_outlined),
                  ]),
            ])
          ]),
    );
  }
}
