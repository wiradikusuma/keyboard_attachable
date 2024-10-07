import 'package:flutter_keyboard_visibility_temp_fork/flutter_keyboard_visibility_temp_fork.dart'
    as fkv;
import 'package:keyboard_attachable/src/visibility/keyboard_visibility_controller.dart';

class DefaultKeyboardVisibilityController
    implements KeyboardVisibilityController {
  const DefaultKeyboardVisibilityController();

  @override
  Stream<bool> get onChange => fkv.KeyboardVisibilityController().onChange;
}
