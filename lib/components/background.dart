import 'dart:ui';

import 'package:flame/components.dart';

class Background extends PositionComponent {
  Sprite bg;
  Background(this.bg);

  @override
  void render(Canvas canvas) {
    bg.render(canvas);
  }
}
