<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

# stacked_rotating_loader

A customizable and lightweight Flutter loading indicator that stacks multiple PNG frames and rotates them in alternating directions for a smooth, hypnotic loading animation.

## ✨ Features
- Stack multiple image frames into a single animated loader.
- Alternate rotation directions for a dynamic effect.
- Fully customizable size and speed.
- Works with any set of PNG or ImageProvider assets.
- No external dependencies — pure Flutter animation.

## Preview

![screen-20250813-010232-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/94aa7ca2-d921-4afd-a973-2ed3be08b6ec)

## 📦 Installation
Add to your `pubspec.yaml`:
```yaml
dependencies:
  stacked_rotating_loader: ^0.0.1
## Usage

To use the `StackedRotatingLoader` widget in your Flutter app, simply include it inside your widget tree. Here’s an example of how to add it to a basic `HomePage`:

```dart
import 'package:flutter/material.dart';
import 'path_to_stacked_rotating_loader.dart'; // Import your custom loader widget

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading Indicator'),
      ),
      body: SafeArea(
        child: Center(
          child: StackedRotatingLoader(),
        ),
      ),
    );
  }
}



