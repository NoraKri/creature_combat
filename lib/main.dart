import 'package:creature_combat/creaturecombatgame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final game = CreatureCombatGame();
  runApp(GameWidget(game: game));
}
