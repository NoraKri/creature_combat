import "package:creature_combat/components/background.dart";
import "package:creature_combat/components/creature.dart";
import "package:flame/components.dart";
import "package:flame/flame.dart";
import "package:flame/game.dart";

class CreatureCombatGame extends FlameGame {
  static const double creatureSideLength = 64.0;
  static final Vector2 creatureSize =
      Vector2(creatureSideLength, creatureSideLength);
  static const double screenWidth = 480.0;
  static const double screenHeight = 270.0;
  static final Vector2 screenSize = Vector2(screenWidth, screenHeight);

  // a special handler that is called when the game instance is attached
  // to the Flutter widget tree for the first time.
  // Use for loading assets
  @override
  Future<void> onLoad() async {
    final backgroundSprite = await Flame.images.load("backgrounds/greenBg.png");
    final creatureSprite = await Flame.images.load("sprites/cat.png");

    // Setup components
    final background = Background(Sprite(backgroundSprite))
      ..size = screenSize
      ..position = Vector2(0, 0);
    final creature = Creature(1, Sprite(creatureSprite), 1)
      ..size = creatureSize
      ..position = Vector2(creatureSideLength * 3.5, creatureSideLength);

    // Add components to game world
    world.add(background);
    world.add(creature);

    // Camera setup
    camera.viewfinder.visibleGameSize = screenSize;
    camera.viewfinder.position = Vector2(screenWidth / 2, 0);
    camera.viewfinder.anchor = Anchor.topCenter;
  }
}
