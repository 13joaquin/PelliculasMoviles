import 'package:flutter/material.dart';
import 'package:pelicula2022/models/list_page.dart';
import 'package:pelicula2022/providers/movies_provider.dart';
import 'package:pelicula2022/screens/form_screen.dart';
import 'package:pelicula2022/screens/screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
  runApp(MyAppForm());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MoviesProvider(), lazy: true),
      ],
      child: const MyApp(),
    );
  }
}

class MyAppForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ListPage.Route,
      routes: {
        ListPage.Route: (_) => ListPage(),
        SavePage.Route: (_) => SavePage()
      },
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Peliculas App Udeo',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomeScreen(),
          'details': (_) => const DetailsScreen(),
        },
        theme: ThemeData.light()
            .copyWith(appBarTheme: const AppBarTheme(color: Colors.indigo)));
  }
}
