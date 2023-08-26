import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:provider/provider.dart';
import 'package:united21/provider/auth_provider.dart';

import 'package:united21/screens/loan.dart';
import 'package:united21/screens/onboarding_screen.dart';
import 'package:united21/screens/profile_screen.dart';
import 'package:united21/screens/register.dart';
import 'package:united21/screens/welcome_screen.dart';
// ignore: duplicate_import
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Stripe.publishableKey =
      "pk_test_51Nfu1SSEz5owSKwbpjYYYe78Z9IBjAxN2qBEMopYHwqV7Ez46Ay8eq9vUKbETQGtw4nY793CdTXazvikf06QJTdf00OLcNqJzf";
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'SFProText',
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.red.shade900,
          ),
        ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => const WelcomeScreen(),
          OnboardingScreen.id: (context) => const OnboardingScreen(),
          MyRegister.id: (context) => const MyRegister(),
          LoanScreen.id: (context) => const LoanScreen(),
          profileScreen.id: (context) => const profileScreen()
        },
      ),
    );
  }
}
