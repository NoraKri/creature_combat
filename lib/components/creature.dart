import 'package:flame/components.dart';
import 'package:flame/image_composition.dart';

class Creature extends PositionComponent {
  final int id;
  final Sprite sprite;
  int level;

  Creature(this.id, this.sprite, this.level);
  @override
  bool get debugMode => true;

  @override
  void render(Canvas canvas) {
    sprite.render(canvas);
  }
}
