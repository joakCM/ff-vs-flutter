import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travelmate_flutter/pages/favorites_page.dart';
import 'package:travelmate_flutter/pages/home/home_page.dart';
import 'package:travelmate_flutter/providers/places_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PlacesProvider(),
      child: const TravelMate(),
    ),
  );
}

class TravelMate extends StatefulWidget {
  const TravelMate({super.key});

  @override
  TravelMateState createState() => TravelMateState();
}

class TravelMateState extends State<TravelMate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TravelMate',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/favorites': (context) => const FavoritesPage(),
      },
    );
  }
}
