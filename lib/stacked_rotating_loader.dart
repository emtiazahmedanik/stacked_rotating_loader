library stacked_rotating_loader;

import 'package:flutter/material.dart';

class StackedRotatingLoader extends StatefulWidget {
  final List<ImageProvider> frames = [
    AssetImage('assets/frame1.png'),
    AssetImage('assets/frame2.png'),
    AssetImage('assets/frame3.png'),
    AssetImage('assets/frame4.png'),
  ];
  final double size = 100;
  final Duration duration = const Duration(seconds: 2);
   StackedRotatingLoader({Key? key}) : super(key: key);

  @override
  StackedRotatingLoaderState createState() => StackedRotatingLoaderState();
}

class StackedRotatingLoaderState extends State<StackedRotatingLoader>
    with TickerProviderStateMixin {
  late final List<AnimationController> _controllers;

  @override
  void initState() {
    super.initState();

    _controllers = List.generate(widget.frames.length, (i) {
      final controller = AnimationController(
        vsync: this,
        duration: widget.duration,
      )..repeat();
      return controller;
    });
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Stack(
        alignment: Alignment.center,
        children: List.generate(widget.frames.length, (index) {
          return RotationTransition(
            turns: Tween(
              begin: 0.0,
              end: index.isEven ? 1.0 : -1.0,
            ).animate(_controllers[index]),
            child: Image(
              image: widget.frames[index],
              width: widget.size,
              height: widget.size,
            ),
          );
        }),
      ),
    );
  }
}
