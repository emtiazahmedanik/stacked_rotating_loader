import 'package:flutter_test/flutter_test.dart';

import 'package:stacked_rotating_loader/stacked_rotating_loader.dart';

void main() {
  test('creates a stacked rotating loader', () {
    final loader = StackedRotatingLoader();
    expect(loader, isA<StackedRotatingLoader>());
  });
}
