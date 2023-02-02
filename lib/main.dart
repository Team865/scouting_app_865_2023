import 'package:flutter/material.dart'; //imports flutter -- most important line of code
import 'package:provider/provider.dart';

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
              seedColor: const Color.fromARGB(255, 1, 27, 61)),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  //allows the state of the app to change
  //creates a variable to store the robot's position
  String robot = '';
  //sets the default icons for the robot position buttons
  var red1 = Icons.circle_outlined;
  var red2 = Icons.circle_outlined;
  var red3 = Icons.circle_outlined;
  var blue1 = Icons.circle_outlined;
  var blue2 = Icons.circle_outlined;
  var blue3 = Icons.circle_outlined;

  void setRed1() {
    //activates when the red 1 button is pressed
    if (red1 == Icons.circle_outlined) {
      //selects red 1 if not selected, deselects other buttons
      red1 = Icons.circle;
      red2 = Icons.circle_outlined;
      red3 = Icons.circle_outlined;
      blue1 = Icons.circle_outlined;
      blue2 = Icons.circle_outlined;
      blue3 = Icons.circle_outlined;
    } else {
      //deselects red 1 if already selected
      red1 = Icons.circle_outlined;
    }
    robot = 'red 1'; //sets the robot's position to red 1
    notifyListeners(); //updates the display
  }

  void setRed2() {
    if (red2 == Icons.circle_outlined) {
      red1 = Icons.circle_outlined;
      red2 = Icons.circle;
      red3 = Icons.circle_outlined;
      blue1 = Icons.circle_outlined;
      blue2 = Icons.circle_outlined;
      blue3 = Icons.circle_outlined;
    } else {
      red2 = Icons.circle_outlined;
    }
    robot = 'red 2';
    notifyListeners();
  }

  void setRed3() {
    if (red3 == Icons.circle_outlined) {
      red1 = Icons.circle_outlined;
      red2 = Icons.circle_outlined;
      red3 = Icons.circle;
      blue1 = Icons.circle_outlined;
      blue2 = Icons.circle_outlined;
      blue3 = Icons.circle_outlined;
    } else {
      red3 = Icons.circle_outlined;
    }
    robot = 'red 3';
    notifyListeners();
  }

  void setBlue1() {
    if (blue1 == Icons.circle_outlined) {
      red1 = Icons.circle_outlined;
      red2 = Icons.circle_outlined;
      red3 = Icons.circle_outlined;
      blue1 = Icons.circle;
      blue2 = Icons.circle_outlined;
      blue3 = Icons.circle_outlined;
    } else {
      blue1 = Icons.circle_outlined;
    }
    robot = 'blue 1';
    notifyListeners();
  }

  void setBlue2() {
    if (blue2 == Icons.circle_outlined) {
      red1 = Icons.circle_outlined;
      red2 = Icons.circle_outlined;
      red3 = Icons.circle_outlined;
      blue1 = Icons.circle_outlined;
      blue2 = Icons.circle;
      blue3 = Icons.circle_outlined;
    } else {
      blue2 = Icons.circle_outlined;
    }
    robot = 'blue 2';
    notifyListeners();
  }

  void setBlue3() {
    if (blue3 == Icons.circle_outlined) {
      red1 = Icons.circle_outlined;
      red2 = Icons.circle_outlined;
      red3 = Icons.circle_outlined;
      blue1 = Icons.circle_outlined;
      blue2 = Icons.circle_outlined;
      blue3 = Icons.circle;
    } else {
      blue3 = Icons.circle_outlined;
    }
    robot = 'blue 3';
    notifyListeners();
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
    switch (selectedIndex) {
      //allows the page to change
      //placeholders should be replaced with the widgets for the appropriate pages
      case 0:
        page = const GeneratorPage();
        break;
      case 1:
        page = const Placeholder();
        break;
      case 2:
        page = const Placeholder();
        break;
      case 3:
        page = const Placeholder();
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

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    //creates the home page
    var appState = context.watch<
        MyAppState>(); //allows the home page widget to use variables from the app state

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment
            .center, //centres the column in the GeneratorPage widget
        children: <Widget>[
          const Padding(
            //gives the text more space
            padding: EdgeInsets.all(8.0),
            child: Text('Scouter name:'),
          ),
          //add place to input your name here
          const SizedBox(height: 8), //creates a gap before the next item
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Team number:'),
          ),
          //add place to input the team's number here
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Robot position:'),
          ),
          //creates buttons to select the robot's position
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ElevatedButton.icon(
                    //creates a button with an icon
                    onPressed: () {
                      //allows the button to be functional
                      appState.setRed1();
                    },
                    icon: Icon(appState.red1),
                    label: const Text('Red 1'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      appState.setBlue1();
                    },
                    icon: Icon(appState.blue1),
                    label: const Text('Blue 1'),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      appState.setRed2();
                    },
                    icon: Icon(appState.red2),
                    label: const Text('Red 2'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      appState.setBlue2();
                    },
                    icon: Icon(appState.blue2),
                    label: const Text('Blue 2'),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      appState.setRed3();
                    },
                    icon: Icon(appState.red3),
                    label: const Text('Red 3'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      appState.setBlue3();
                    },
                    icon: Icon(appState.blue3),
                    label: const Text('Blue 3'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
