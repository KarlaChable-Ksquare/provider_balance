import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:provider_bank/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('End to end testing', () {
    testWidgets(
      "Add Money to Bank",
      (WidgetTester tester) async {
        app.main();

        //Test 1, Create a concept
        await tester.pumpAndSettle();
        var fab = find.byKey(const Key('createButton'));
        await tester.tap(fab);
        await tester.pumpAndSettle();

        var expenseTileRadio = find.byKey(const Key('listTileExpense'));
        await tester.tap(expenseTileRadio);

        await tester.enterText(
            find.byKey(const Key('titleTextField')), 'Figma Snow Miku');
        await tester.enterText(
            find.byKey(const Key('amountTextField')), '1400');
        await tester.enterText(
            find.byKey(const Key('descTextField')), 'Compre una figma');

        var addSubmitButton = find.byKey(const Key('submitButton'));
        await tester.tap(addSubmitButton);

        var backButton = find.byTooltip('Back');
        await tester.tap(backButton); //showDialogTap
        await tester.pumpAndSettle();

        var dialogTap = find.byKey(const Key('showDialogTap'));
        await tester.tap(dialogTap);
        await tester.pumpAndSettle();

        expect(find.text('Figma Snow Miku'), findsOneWidget);
      },
    );
  });
}
