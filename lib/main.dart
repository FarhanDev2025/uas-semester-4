import 'package:app_jualan/screens/choose_language_screen.dart';
import 'package:app_jualan/screens/forgot_email_screen.dart';
import 'package:app_jualan/screens/forgot_password_screen.dart';
import 'package:app_jualan/screens/home_screen.dart';
import 'package:app_jualan/screens/main_screen.dart';
import 'package:app_jualan/screens/order_confirmation_screen.dart';
import 'package:app_jualan/screens/my_orders_screen.dart';
import 'package:app_jualan/screens/order_tracking_screen.dart';
import 'package:app_jualan/screens/otp_verification_screen.dart';
import 'package:app_jualan/screens/splash_screen.dart';
import 'package:app_jualan/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  }); //super.key (artinya merujuk pada file diri sendiri)//

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'jualan',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: SplashScreen(),
    );
  }
}
