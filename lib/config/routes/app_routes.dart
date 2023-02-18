import 'package:color_changing/home_screen.dart';
import 'package:color_changing/providers/global_provider.dart';
import 'package:color_changing/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

/// app routes
class AppRoutes {
  ///all providers in app
  static List<SingleChildWidget> getProviders() {
    return [
      ChangeNotifierProvider(create: (_) => GlobalProvider()),
      ChangeNotifierProvider(create: (_) => HomeProvider()),
    ];
  }

  ///all routes in app
  static Route<MaterialPageRoute<dynamic>> generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case HomeScreen.name:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
