import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Login_page.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/homes_detail.dart';
import 'package:flutter_application_1/core/mystore.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/theme.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Pages/cart_page.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  setPathUrlStrategy();
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var vxNavigator = VxNavigator(routes: {
    //   "/": (_, __) => MaterialPage(child: HomePage()),
    //   MyRoutes.homeRoute: (_, __) => MaterialPage(child: HomePage()),
    //   MyRoutes.homedetailRoute: (uri, _) {
    //     final catalog = (VxState.store as MyStore)
    //         .catalog
    //         .getById(int.parse(uri.queryParameters["id"]));
    //     return MaterialPage(
    //         child: HomeDetailpage(
    //       catalog: catalog,
    //     ));
    //   },
    //   MyRoutes.loginRoute: (_, __) => MaterialPage(child: LoginPage()),
    //   MyRoutes.homeRoute: (_, __) => MaterialPage(child: HomePage()),
    //   MyRoutes.cartRoute: (_, __) => MaterialPage(child: CartPage()),
    // });
    // (VxState.store as MyStore).navigator = vxNavigator;

    return MaterialApp.router(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      routeInformationParser: VxInformationParser(),
      
      routerDelegate: VxNavigator(routes: {
        // InitialRouteListFactory = List<MyRoute.Logu=== <dynamic>> LoginPage(initialRoute),
        "/": (_, __) => MaterialPage(child: LoginPage()),
        MyRoutes.loginRoute: (_, __) => MaterialPage(child: LoginPage()),
        MyRoutes.homedetailRoute: (uri, _) {
          final catalog = (VxState.store as MyStore)
              .catalog
              .getById(int.parse(uri.queryParameters["id"].toString()));
          return MaterialPage(
              child: HomeDetailpage(
            catalog: catalog,
          ));
        },
        MyRoutes.loginRoute: (_, __) => MaterialPage(child: LoginPage()),
        MyRoutes.homeRoute: (_, __) => MaterialPage(child: HomePage()),
        MyRoutes.cartRoute: (_, __) => MaterialPage(child: CartPage()),
      }),

      // initialRoute: MyRoutes.loginRoute,
      // routes: {
      //   "/": (context) => LoginPage(),
      //   MyRoutes.loginRoute: (context) => LoginPage(),
      //   MyRoutes.homeRoute: (context) => HomePage(),
      //   MyRoutes.cartRoute: (context) => CartPage(),
      // MyRoutes.homedetailRoute: (context) => HomeDetailpage(),
      // },
    );
  }
}
