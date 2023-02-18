import 'package:color_changing/config/routes/app_routes.dart';
import 'package:color_changing/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///main class of the app
class MyApp extends StatelessWidget {
  ///constructor for MyApp class
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppRoutes.getProviders(),
      child: const MaterialApp(
        title: 'Color changing',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}
