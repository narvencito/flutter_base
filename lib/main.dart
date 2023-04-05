import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music/app/config/bloc_observer.dart';
import 'package:music/app/config/init_config.dart';
import 'package:music/app/route/routes_app.dart';
import 'package:music/app/theme/theme_app.dart';

void main() {
  InitConfig().setup();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeApp().light,
      
      onGenerateRoute: (settings) => RoutesApp.routes(settings),
    );
  }
}
