import 'package:flutter/material.dart'; //imports flutter -- most important line of code
import 'package:provider/provider.dart';
import 'package:scouting_app_865_2023/pages/scanner.dart';

import '../utils/state.dart';
import '../utils/gsheets.dart';
import '../pages/home.dart';
import '../pages/auto.dart';
import '../pages/teleop.dart';
import '../pages/endgame.dart';
import '../pages/info.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Gsheets.init();

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
        page = const HomePage();
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
      case 4:
        page = const InfoPage();
        break;
      case 5:
        page = QrScannerPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex'); //error case
    }

    return Builder(builder: (context) {
      return LayoutBuilder(builder: (context, constraints) {
        return SafeArea(
          child: Scaffold(
            body: Row(
              children: [
                NavigationRail(
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
                    NavigationRailDestination(
                        icon: Icon(Icons.info_outline), label: Text('Info')),
                    NavigationRailDestination(
                        icon: Icon(Icons.qr_code_scanner), label: Text('QR')),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) =>
                      setState(() => selectedIndex = value),
                  groupAlignment: 0,
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Center(child: page),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
    });
  }
}
