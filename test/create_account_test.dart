import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:best_matcher/main.dart';
import './mock.dart';

void main() {
  setupFirebaseAuthMocks();
  setUpAll(() async {
    await Firebase.initializeApp();
  });
  testWidgets('Login Smoke Test: testAccountCreationCreateButton', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());
    await tester.pumpAndSettle();
    // Verify that text starts on login page
    expect(find.text('News will go here!'), findsNothing);
    expect(find.byIcon(Icons.login), findsNothing);

    //icon for navigation to verify it is present
    expect(find.byIcon(Icons.account_box), findsOneWidget);
  });

  testWidgets('Login Smoke Test: testAccountCreationTitle', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());
    await tester.pumpAndSettle();
    // Verify that text starts on login page
    expect(find.text('News will go here!'), findsNothing);
    expect(find.byIcon(Icons.login), findsNothing);

    //icon for navigation to verify it is present
    expect(find.text('BestMatcher'), findsOneWidget);
  });

  testWidgets('Login Smoke Test: testAccountCreationCancelButton', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());

    // Verify that text starts on login page
    expect(find.text('News will go here!'), findsNothing);
    expect(find.byIcon(Icons.login), findsNothing);

    //icon for navigation to verify it is present
    expect(find.byIcon(Icons.cancel), findsOneWidget);
    await tester.pump();
  });

  testWidgets(
      'Create Account Smoke Test: testCreateAccountWithToManyCharacters', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());

    // enter text
    await tester.enterText(find.byKey(Key('createaccountfirstname')), 'abcdefghijklmnopqrstuvwxyz');
    await tester.pump();

    expect(find.text('abcdefghijklmnopqrstuvwxyz'), findsNothing);
    expect(find.text('abcdefghijklmnopqrst'), findsOneWidget);
  });

  testWidgets(
      'Create Account Smoke Test: testCreateAccountNotObscured', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());

    // Verify that text does not start on main page
    expect(find.text('News will go here!'), findsNothing);

    expect((tester.firstWidget(find.byType(TextField)) as TextField).obscureText, false);
  });

  testWidgets(
      'Create Account Smoke Test: testCreateAccountWithspecialchar', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());

    // enter text
    await tester.enterText(find.byKey(Key('createaccountfirstname')), 'abcdefghijklmnopqrstuvwxyz');
    await tester.pump();

    expect(find.text('@#@###@%@%'), findsNothing);
  });

  testWidgets(
      'Create Account Smoke Test: testCreateAccountEmail', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());

    final gesture = await tester.startGesture(Offset(0, 300));
    await gesture.moveBy(Offset(0, -300));

    // enter text
    await tester.enterText(find.byKey(Key('createaccountemail')), 'rfueston@gmail.com');
    await tester.pump();
  });

  testWidgets(
      'Create Account Smoke Test: testCreateAccountRepeat', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());

    final gesture = await tester.startGesture(Offset(0, 300));
    await gesture.moveBy(Offset(0, -300));

    // enter text
    await tester.enterText(find.byKey(Key('createaccountrepeat')), 'test12');
    await tester.pump();
  });

  testWidgets(
      'Create Account Smoke Test: testCreateAccountlast', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());

    // enter text
    await tester.enterText(find.byKey(Key('createaccountlastname')), 'test');
    await tester.pump();
  });

  testWidgets(
      'Create Account Smoke Test: testCreateAccountUser', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());

    // enter text
    await tester.enterText(find.byKey(Key('createaccountusername')), 'rfueston@gmail.com');
    await tester.pump();
  });

  testWidgets(
      'Create Account Smoke Test: testCreateAccountAge', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppAccountPage());

    final gesture = await tester.startGesture(Offset(0, 300));
    await gesture.moveBy(Offset(0, -300));

    // enter text
    await tester.enterText(find.byKey(Key('createaccountage')), '100');
    await tester.pump();
  });

}
