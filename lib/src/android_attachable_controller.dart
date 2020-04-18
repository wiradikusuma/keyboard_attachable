import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:keyboard_attachable/src/keyboard_attachable_controller.dart';

class AndroidAttachableController implements KeyboardAttachableController {
  AndroidAttachableController({@required TickerProvider vsync}) {
    _controller = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 150),
      reverseDuration: const Duration(milliseconds: 150),
    );
  }

  AnimationController _controller;

  @override
  Animation<double> get animation => CurvedAnimation(
        parent: _controller,
        curve: Cubic(0, 0, 0.2, 1),
        reverseCurve: Cubic(0, 0, 1, 0.2),
      );

  @override
  void dispose() {
    _controller.dispose();
    _controller = null;
  }

  @override
  TickerFuture forward() => _controller.forward();

  @override
  TickerFuture reverse() => _controller.reverse();
}
