import 'package:flutter/material.dart'; //imports flutter -- most important line of code
import 'package:provider/provider.dart';

import '../pages/endgame.dart';
import '../pages/generator.dart';
import '../pages/teleop.dart';
import '../pages/auto.dart';

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

enum Piece { none, cone, cube }

// parked only used for endgame's position
enum Position { none, docked, parked, engaged }

enum StartingPosition { none, red1, red2, red3, blue1, blue2, blue3 }

class MyAppState extends ChangeNotifier {
  // Generator Page Data
  final commentController = TextEditingController();
  final teamController = TextEditingController();
  StartingPosition startingPosition = StartingPosition.none;

  // Auto Page Data
  bool autoMobility = false;
  Position autoPosition = Position.none;
  List<bool> autoHigh = List.filled(10, false);
  List<bool> autoMid = List.filled(10, false);
  List<Piece> autoLow = List.filled(10, Piece.none);

  // Teleop Page Data
  bool defense = false;
  bool groundIntake = false;
  bool singleSubstationIntake = false;
  bool doubleSubstationIntake = false;
  List<bool> teleopHigh = List.filled(10, false);
  List<bool> teleopMid = List.filled(10, false);
  List<Piece> teleopLow = List.filled(10, Piece.none);

  // Endgame Page Data
  Position endgamePosition = Position.none;
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

    // assigns the relevant page for the selected index
    switch (selectedIndex) {
      case 0:
        page = const GeneratorPage();
        break;
      case 1:
        page = const AutoPage();
        break;
      case 2:
        page = const TeleopPage();
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
                  onDestinationSelected: (value) =>
                      setState(() => selectedIndex = value),
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
