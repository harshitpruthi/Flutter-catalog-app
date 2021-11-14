import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/CartPage.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/LoginPage.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/store.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: CustomTheme.lightTheme(context),
      darkTheme: CustomTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: CustomRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        CustomRoutes.homeRoute: (context) => HomePage(),
        CustomRoutes.loginRoute: (context) => LoginPage(),
        CustomRoutes.cartPageRoute: (context) => CartPage(),
      },
    );
  }
}
