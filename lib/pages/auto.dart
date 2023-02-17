import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../widgets/toggle_chip.dart';

class AutoPage extends StatefulWidget {
  const AutoPage({super.key});

  @override
  State<AutoPage> createState() => _AutoPageState();
}

enum AutoPosition { none, docked, engaged }

enum AutoHigh1 { none, cone }

enum AutoHigh2 { none, cube }

enum AutoHigh3 { none, cone }

enum AutoHigh4 { none, cone }

enum AutoHigh5 { none, cube }

enum AutoHigh6 { none, cone }

enum AutoHigh7 { none, cone }

enum AutoHigh8 { none, cube }

enum AutoHigh9 { none, cone }

enum AutoMid1 { none, cone }

enum AutoMid2 { none, cube }

enum AutoMid3 { none, cone }

enum AutoMid4 { none, cone }

enum AutoMid5 { none, cube }

enum AutoMid6 { none, cone }

enum AutoMid7 { none, cone }

enum AutoMid8 { none, cube }

enum AutoMid9 { none, cone }

enum AutoLow1 { none, cone, cube }

enum AutoLow2 { none, cone, cube }

enum AutoLow3 { none, cone, cube }

enum AutoLow4 { none, cone, cube }

enum AutoLow5 { none, cone, cube }

enum AutoLow6 { none, cone, cube }

enum AutoLow7 { none, cone, cube }

enum AutoLow8 { none, cone, cube }

enum AutoLow9 { none, cone, cube }

enum AutoMobility { no, yes }

class _AutoPageState extends State<AutoPage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    void updateAutoPosition(AutoPosition value) {
      setState(() {
        appState.autoPosition = value;
      });
    }

    void updateAutoMobility(AutoMobility value) {
      setState(() {
        appState.autoMobility = value;
      });
    }

    void updateAutoHigh1(AutoHigh1 value) {
      setState(() {
        if (appState.autoHigh1 == value) {
          appState.autoHigh1 = AutoHigh1.none;
        } else {
          appState.autoHigh1 = value;
        }
      });
    }

    void updateAutoHigh2(AutoHigh2 value) {
      setState(() {
        if (appState.autoHigh2 == value) {
          appState.autoHigh2 = AutoHigh2.none;
        } else {
          appState.autoHigh2 = value;
        }
      });
    }

    void updateAutoHigh3(AutoHigh3 value) {
      setState(() {
        if (appState.autoHigh3 == value) {
          appState.autoHigh3 = AutoHigh3.none;
        } else {
          appState.autoHigh3 = value;
        }
      });
    }

    void updateAutoHigh4(AutoHigh4 value) {
      setState(() {
        if (appState.autoHigh4 == value) {
          appState.autoHigh4 = AutoHigh4.none;
        } else {
          appState.autoHigh4 = value;
        }
      });
    }

    void updateAutoHigh5(AutoHigh5 value) {
      setState(() {
        if (appState.autoHigh5 == value) {
          appState.autoHigh5 = AutoHigh5.none;
        } else {
          appState.autoHigh5 = value;
        }
      });
    }

    void updateAutoHigh6(AutoHigh6 value) {
      setState(() {
        if (appState.autoHigh6 == value) {
          appState.autoHigh6 = AutoHigh6.none;
        } else {
          appState.autoHigh6 = value;
        }
      });
    }

    void updateAutoHigh7(AutoHigh7 value) {
      setState(() {
        if (appState.autoHigh7 == value) {
          appState.autoHigh7 = AutoHigh7.none;
        } else {
          appState.autoHigh7 = value;
        }
      });
    }

    void updateAutoHigh8(AutoHigh8 value) {
      setState(() {
        if (appState.autoHigh8 == value) {
          appState.autoHigh8 = AutoHigh8.none;
        } else {
          appState.autoHigh8 = value;
        }
      });
    }

    void updateAutoHigh9(AutoHigh9 value) {
      setState(() {
        if (appState.autoHigh9 == value) {
          appState.autoHigh9 = AutoHigh9.none;
        } else {
          appState.autoHigh9 = value;
        }
      });
    }

    void updateAutoMid1(AutoMid1 value) {
      setState(() {
        if (appState.autoMid1 == value) {
          appState.autoMid1 = AutoMid1.none;
        } else {
          appState.autoMid1 = value;
        }
      });
    }

    void updateAutoMid2(AutoMid2 value) {
      setState(() {
        if (appState.autoMid2 == value) {
          appState.autoMid2 = AutoMid2.none;
        } else {
          appState.autoMid2 = value;
        }
      });
    }

    void updateAutoMid3(AutoMid3 value) {
      setState(() {
        if (appState.autoMid3 == value) {
          appState.autoMid3 = AutoMid3.none;
        } else {
          appState.autoMid3 = value;
        }
      });
    }

    void updateAutoMid4(AutoMid4 value) {
      setState(() {
        if (appState.autoMid4 == value) {
          appState.autoMid4 = AutoMid4.none;
        } else {
          appState.autoMid4 = value;
        }
      });
    }

    void updateAutoMid5(AutoMid5 value) {
      setState(() {
        if (appState.autoMid5 == value) {
          appState.autoMid5 = AutoMid5.none;
        } else {
          appState.autoMid5 = value;
        }
      });
    }

    void updateAutoMid6(AutoMid6 value) {
      setState(() {
        if (appState.autoMid6 == value) {
          appState.autoMid6 = AutoMid6.none;
        } else {
          appState.autoMid6 = value;
        }
      });
    }

    void updateAutoMid7(AutoMid7 value) {
      setState(() {
        if (appState.autoMid7 == value) {
          appState.autoMid7 = AutoMid7.none;
        } else {
          appState.autoMid7 = value;
        }
      });
    }

    void updateAutoMid8(AutoMid8 value) {
      setState(() {
        if (appState.autoMid8 == value) {
          appState.autoMid8 = AutoMid8.none;
        } else {
          appState.autoMid8 = value;
        }
      });
    }

    void updateAutoMid9(AutoMid9 value) {
      setState(() {
        if (appState.autoMid9 == value) {
          appState.autoMid9 = AutoMid9.none;
        } else {
          appState.autoMid9 = value;
        }
      });
    }

    void updateAutoLow1(AutoLow1 value) {
      setState(() {
        if (appState.autoLow1 == value) {
          appState.autoLow1 = AutoLow1.none;
        } else {
          appState.autoLow1 = value;
        }
      });
    }

    void updateAutoLow2(AutoLow2 value) {
      setState(() {
        if (appState.autoLow2 == value) {
          appState.autoLow2 = AutoLow2.none;
        } else {
          appState.autoLow2 = value;
        }
      });
    }

    void updateAutoLow3(AutoLow3 value) {
      setState(() {
        if (appState.autoLow3 == value) {
          appState.autoLow3 = AutoLow3.none;
        } else {
          appState.autoLow3 = value;
        }
      });
    }

    void updateAutoLow4(AutoLow4 value) {
      setState(() {
        if (appState.autoLow4 == value) {
          appState.autoLow4 = AutoLow4.none;
        } else {
          appState.autoLow4 = value;
        }
      });
    }

    void updateAutoLow5(AutoLow5 value) {
      setState(() {
        if (appState.autoLow5 == value) {
          appState.autoLow5 = AutoLow5.none;
        } else {
          appState.autoLow5 = value;
        }
      });
    }

    void updateAutoLow6(AutoLow6 value) {
      setState(() {
        if (appState.autoLow6 == value) {
          appState.autoLow6 = AutoLow6.none;
        } else {
          appState.autoLow6 = value;
        }
      });
    }

    void updateAutoLow7(AutoLow7 value) {
      setState(() {
        if (appState.autoLow7 == value) {
          appState.autoLow7 = AutoLow7.none;
        } else {
          appState.autoLow7 = value;
        }
      });
    }

    void updateAutoLow8(AutoLow8 value) {
      setState(() {
        if (appState.autoLow8 == value) {
          appState.autoLow8 = AutoLow8.none;
        } else {
          appState.autoLow8 = value;
        }
      });
    }

    void updateAutoLow9(AutoLow9 value) {
      setState(() {
        if (appState.autoLow9 == value) {
          appState.autoLow9 = AutoLow9.none;
        } else {
          appState.autoLow9 = value;
        }
      });
    }

    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
      const Text("Robot auto mobility:"),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        ToggleChip(
            text: "No",
            onPressed: updateAutoMobility,
            value: AutoMobility.no,
            selection: appState.autoMobility),
        ToggleChip(
            text: "Yes",
            onPressed: updateAutoMobility,
            value: AutoMobility.yes,
            selection: appState.autoMobility),
      ]),
      const SizedBox(height: 8),
      const Text("Chargepad:"),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        ToggleChip(
            text: "None",
            onPressed: updateAutoPosition,
            value: AutoPosition.none,
            selection: appState.autoPosition),
        ToggleChip(
            text: "Docked",
            onPressed: updateAutoPosition,
            value: AutoPosition.docked,
            selection: appState.autoPosition),
        ToggleChip(
            text: "Engaged",
            onPressed: updateAutoPosition,
            value: AutoPosition.engaged,
            selection: appState.autoPosition),
      ]),
      const SizedBox(height: 8),
      const Text("Auto Pieces Scored:"),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ToggleChip(
              text: "",
              onPressed: updateAutoHigh1,
              value: AutoHigh1.cone,
              selection: appState.autoHigh1),
          ToggleChip(
              text: "",
              onPressed: updateAutoMid1,
              value: AutoMid1.cone,
              selection: appState.autoMid1),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow1,
              value: AutoLow1.cone,
              selection: appState.autoLow1),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow1,
              value: AutoLow1.cube,
              selection: appState.autoLow1),
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ToggleChip(
              text: "",
              onPressed: updateAutoHigh2,
              value: AutoHigh2.cube,
              selection: appState.autoHigh2),
          ToggleChip(
              text: "",
              onPressed: updateAutoMid2,
              value: AutoMid2.cube,
              selection: appState.autoMid2),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow2,
              value: AutoLow2.cone,
              selection: appState.autoLow2),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow2,
              value: AutoLow2.cube,
              selection: appState.autoLow2),
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ToggleChip(
              text: "",
              onPressed: updateAutoHigh3,
              value: AutoHigh3.cone,
              selection: appState.autoHigh3),
          ToggleChip(
              text: "",
              onPressed: updateAutoMid3,
              value: AutoMid3.cone,
              selection: appState.autoMid3),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow3,
              value: AutoLow3.cone,
              selection: appState.autoLow3),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow3,
              value: AutoLow3.cube,
              selection: appState.autoLow3),
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ToggleChip(
              text: "",
              onPressed: updateAutoHigh4,
              value: AutoHigh4.cone,
              selection: appState.autoHigh4),
          ToggleChip(
              text: "",
              onPressed: updateAutoMid4,
              value: AutoMid4.cone,
              selection: appState.autoMid4),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow4,
              value: AutoLow4.cone,
              selection: appState.autoLow4),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow4,
              value: AutoLow4.cube,
              selection: appState.autoLow4),
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ToggleChip(
              text: "",
              onPressed: updateAutoHigh5,
              value: AutoHigh5.cube,
              selection: appState.autoHigh5),
          ToggleChip(
              text: "",
              onPressed: updateAutoMid5,
              value: AutoMid5.cube,
              selection: appState.autoMid5),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow5,
              value: AutoLow5.cone,
              selection: appState.autoLow5),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow5,
              value: AutoLow5.cube,
              selection: appState.autoLow5),
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ToggleChip(
              text: "",
              onPressed: updateAutoHigh6,
              value: AutoHigh6.cone,
              selection: appState.autoHigh6),
          ToggleChip(
              text: "",
              onPressed: updateAutoMid6,
              value: AutoMid6.cone,
              selection: appState.autoMid6),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow6,
              value: AutoLow6.cone,
              selection: appState.autoLow6),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow6,
              value: AutoLow6.cube,
              selection: appState.autoLow6),
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ToggleChip(
              text: "",
              onPressed: updateAutoHigh7,
              value: AutoHigh7.cone,
              selection: appState.autoHigh7),
          ToggleChip(
              text: "",
              onPressed: updateAutoMid7,
              value: AutoMid7.cone,
              selection: appState.autoMid7),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow7,
              value: AutoLow7.cone,
              selection: appState.autoLow7),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow7,
              value: AutoLow7.cube,
              selection: appState.autoLow7),
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ToggleChip(
              text: "",
              onPressed: updateAutoHigh8,
              value: AutoHigh8.cube,
              selection: appState.autoHigh8),
          ToggleChip(
              text: "",
              onPressed: updateAutoMid8,
              value: AutoMid8.cube,
              selection: appState.autoMid8),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow8,
              value: AutoLow8.cone,
              selection: appState.autoLow8),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow8,
              value: AutoLow8.cube,
              selection: appState.autoLow8),
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ToggleChip(
              text: "",
              onPressed: updateAutoHigh9,
              value: AutoHigh9.cone,
              selection: appState.autoHigh9),
          ToggleChip(
              text: "",
              onPressed: updateAutoMid9,
              value: AutoMid9.cone,
              selection: appState.autoMid9),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow9,
              value: AutoLow9.cone,
              selection: appState.autoLow9),
          ToggleChip(
              text: "",
              onPressed: updateAutoLow9,
              value: AutoLow9.cube,
              selection: appState.autoLow9),
        ]),
      ])
    ]));
  }
}
