import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_bank/providers/bank_provider.dart';
import 'package:provider_bank/screens/balance.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider_bank/utils/router_generator.dart';
import 'package:provider_bank/utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => BankProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomTheme().themeBank,
        home: const BalanceScreen(),
        initialRoute: '/',
        onGenerateRoute: RouterGenerator().routerGenerate,
      ),
    );
  }
}
