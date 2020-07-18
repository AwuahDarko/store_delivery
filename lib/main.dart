
import 'package:flutter/material.dart';
import 'package:store/ui/screens/home.dart';
import 'package:store/ui/screens/product_details.dart';
import 'package:store/ui/screens/products.dart';
import 'package:store/ui/screens/splash.dart';

import 'blocs/auth_bloc.dart';


void main() => runApp(MyApp(
    AuthBloc(),
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
        '/products': (context) => ProductScreen(),
        '/product-details': (context) => ProductDetails(),
      },
    )));

class MyApp extends InheritedWidget {
  final AuthBloc authBloc;
  final Widget child;
  MyApp(this.authBloc, this.child) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }

  static MyApp of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(aspect: MyApp);
  }
}