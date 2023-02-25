import 'package:flutter/material.dart';
import 'package:scouting_app_865_2023/utils/gsheets.dart';




enum Piece { none, cone, cube }

// parked only used for endgame's position
enum Position { none, docked, parked, engaged }

enum StartingPosition { none, red1, red2, red3, blue1, blue2, blue3 }

class MyAppState extends ChangeNotifier {
  // Generator Page Data
  final commentController = TextEditingController();
  final teamController = TextEditingController();
  final nameController = TextEditingController();
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


  // Resets All Data
  // The function is here to easily check that it includes all the variables
  void reset() {
    commentController.clear();
    teamController.clear();
    nameController.clear();
    startingPosition = StartingPosition.none;

    autoMobility = false;
    autoPosition = Position.none;
    autoHigh = List.filled(10, false);
    autoMid = List.filled(10, false);
    autoLow = List.filled(10, Piece.none);

    defense = false;
    groundIntake = false;
    singleSubstationIntake = false;
    doubleSubstationIntake = false;
    teleopHigh = List.filled(10, false);
    teleopMid = List.filled(10, false);
    teleopLow = List.filled(10, Piece.none);

    endgamePosition = Position.none;
  }
  

  void saveToSheets() {
    Gsheets.addRow([
      nameController.text,
      teamController.text,
      null,
      null,
      startingPosition.name,
      autoMobility ? 1 : 0,
      autoLow.where((element) => element == Piece.cone).length,
      autoLow.where((element) => element == Piece.cube).length,
      autoMid.where((element) => element == Piece.cone).length,
      autoMid.where((element) => element == Piece.cube).length,
      autoHigh.where((element) => element == Piece.cone).length,
      autoHigh.where((element) => element == Piece.cube).length,
      if (autoPosition == Position.docked) 1, 
      if (autoPosition == Position.engaged) 1,
      teleopLow.where((element) => element == Piece.cone).length,
      teleopLow.where((element) => element == Piece.cube).length,
      teleopMid.where((element) => element == Piece.cone).length,
      teleopMid.where((element) => element == Piece.cube).length,
      teleopHigh.where((element) => element == Piece.cone).length,
      teleopHigh.where((element) => element == Piece.cube).length,
      defense ? 1 : 0,
      groundIntake ? 1 : 0,
      singleSubstationIntake ? 1 : 0,
      doubleSubstationIntake ? 1 : 0,
      if (endgamePosition == Position.none) 1,
      if (endgamePosition == Position.docked) 1,
      if (endgamePosition == Position.parked) 1,
      if (endgamePosition == Position.engaged) 1,
      commentController.text,
      
      

      
    ]);
  }
}