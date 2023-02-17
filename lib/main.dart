import 'package:flutter/material.dart'; //imports flutter -- most important line of code
import 'package:provider/provider.dart';

import '../pages/generator.dart';
import '../pages/auto.dart';
import '../pages/endgame.dart';

void main() {
  runApp(const MyApp()); //runs the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Team 865 Scouting App: 2023',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              //sets the colour scheme for the app
              seedColor: const Color.fromRGBO(26, 38, 58, 1)),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  Position position = Position.none;
  EndgamePosition endgamePosition = EndgamePosition.none;
  AutoPosition autoPosition = AutoPosition.none;
  AutoHigh1 autoHigh1 = AutoHigh1.none;
  AutoHigh2 autoHigh2 = AutoHigh2.none;
  AutoHigh3 autoHigh3 = AutoHigh3.none;
  AutoHigh4 autoHigh4 = AutoHigh4.none;
  AutoHigh5 autoHigh5 = AutoHigh5.none;
  AutoHigh6 autoHigh6 = AutoHigh6.none;
  AutoHigh7 autoHigh7 = AutoHigh7.none;
  AutoHigh8 autoHigh8 = AutoHigh8.none;
  AutoHigh9 autoHigh9 = AutoHigh9.none;
  AutoMid1 autoMid1 = AutoMid1.none;
  AutoMid2 autoMid2 = AutoMid2.none;
  AutoMid3 autoMid3 = AutoMid3.none;
  AutoMid4 autoMid4 = AutoMid4.none;
  AutoMid5 autoMid5 = AutoMid5.none;
  AutoMid6 autoMid6 = AutoMid6.none;
  AutoMid7 autoMid7 = AutoMid7.none;
  AutoMid8 autoMid8 = AutoMid8.none;
  AutoMid9 autoMid9 = AutoMid9.none;
  AutoLow1 autoLow1 = AutoLow1.none;
  AutoLow2 autoLow2 = AutoLow2.none;
  AutoLow3 autoLow3 = AutoLow3.none;
  AutoLow4 autoLow4 = AutoLow4.none;
  AutoLow5 autoLow5 = AutoLow5.none;
  AutoLow6 autoLow6 = AutoLow6.none;
  AutoLow7 autoLow7 = AutoLow7.none;
  AutoLow8 autoLow8 = AutoLow8.none;
  AutoLow9 autoLow9 = AutoLow9.none;
  AutoMobility autoMobility = AutoMobility.no;
}

class MyHomePage extends StatefulWidget {
  //NOT the actual home page
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState(); //creates a state
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0; //determines which page is being displayed

  @override
  Widget build(BuildContext context) {
    Widget page;

    switch (selectedIndex) {
      //allows the page to change
      //placeholders should be replaced with the widgets for the appropriate pages
      case 0:
        page = const GeneratorPage();
        break;
      case 1:
        page = const AutoPage();
        break;
      case 2:
        page = const Placeholder();
        break;
      case 3:
        page = const EndgamePage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex'); //error case
    }

    return Builder(builder: (context) {
      return LayoutBuilder(builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  //creates a navigation rail to switch between pages
                  destinations: const [
                    NavigationRailDestination(
                        icon: Icon(Icons.home), label: Text('Home')),
                    NavigationRailDestination(
                        icon: Icon(Icons.videogame_asset_off),
                        label: Text('Auto')),
                    NavigationRailDestination(
                        icon: Icon(Icons.videogame_asset),
                        label: Text('Teleop')),
                    NavigationRailDestination(
                        icon: Icon(Icons.battery_charging_full),
                        label: Text('Endgame')),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      });
    });
  }
}
