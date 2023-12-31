import 'package:best_matcher/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import './mock.dart';

void main() {
  setupFirebaseAuthMocks();
  setUpAll(() async {
    await Firebase.initializeApp();
  });

  testWidgets('Home Page Smoke Test: testChatSendButtonPresent', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    // Verify that text on home page
    expect(find.text('News: First version of the app live!'), findsOneWidget);


    // Tap icon for navigation to verify it is present
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.favorite));
    await tester.pump();

    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.chat));
    await tester.pump();

    expect(find.text('SEND'), findsOneWidget);
  });

  testWidgets('Home Page Smoke Test: testChatPresent', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    // Verify that text on home page
    expect(find.text('News: First version of the app live!'), findsOneWidget);


    // Tap icon for navigation to verify it is present
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.favorite));
    await tester.pump();

    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.chat));
    await tester.pump();

    expect(find.text('Your Message'), findsOneWidget);
  });

  testWidgets('Home Page Smoke Test: testChatTab', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    // Verify that text on home page
    expect(find.text('News: First version of the app live!'), findsOneWidget);


    // Tap icon for navigation to verify it is present
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.favorite));
    await tester.pump();

    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.chat));
  });

}