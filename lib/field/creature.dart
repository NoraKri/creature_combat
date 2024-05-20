import '../data/enums/moves.dart';

class Creature {
  final int id;
  String name;
  int level;
  int exp;
  List<CreatureMove> moveset;
  // food preference
  List<int> stats;
  List<int> genes; // Stat modifiers

  Creature(this.id, this.name, this.level, this.exp, this.moveset, this.stats,
      this.genes);
}

class CreatureMove {
  Moves moveId;

  CreatureMove(this.moveId);
}
