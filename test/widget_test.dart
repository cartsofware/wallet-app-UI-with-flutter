// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:walletapp/pages/home_page.dart';
import 'package:walletapp/utils/card.dart';

void main() {
  testWidgets('MyCard widgets scroll correctly', (WidgetTester tester) async {
    // Build the HomePage widget
    await tester.pumpWidget(const MaterialApp(
      home: HomePage(),
    ));

    // Find the ListView
    final listViewFinder = find.byType(ListView);

    // Scroll down
    await tester.drag(listViewFinder, const Offset(0.0, -500.0));
    await tester.pump();

    // Check if at least one MyCard widget is visible
    expect(find.byType(MyCard), findsWidgets);

    // Scroll down again
    await tester.drag(listViewFinder, const Offset(0.0, -500.0));
    await tester.pump();

    // Check if at least one more MyCard widget is visible
    expect(find.byType(MyCard), findsWidgets);

    // Scroll down again (if needed) or perform additional checks
    // ...

    // Scroll up (if needed) or perform additional checks
    // ...
  });
}
