import 'package:flutter_test/flutter_test.dart';
import 'package:provider_bank/providers/bank_provider.dart';
import 'package:intl/intl.dart';

void main() {
  late BankProvider bankProvider;
  setUp(() {
    bankProvider = BankProvider();
  });
  group('Check Bank Amount', () {
    test('Add new amount concept', () {
      String timeNow = DateFormat.yMd().add_jm().format(DateTime.now());
      bankProvider.addAmountIncExp(
          'Figma Snow Miku', 'Compre una figma', 1400, false, timeNow);
      expect(bankProvider.getAmountCount, 1);
    });
  });
}
