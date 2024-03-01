import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelmate_flutter/pages/home/widgets/places_list/places_list.dart';
import 'package:travelmate_flutter/providers/places_provider.dart';
import 'package:travelmate_flutter/widgets/custom_app_bar.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final favoritePlaces = Provider.of<PlacesModel>(context).favoritePlaces;

    return Scaffold(
      appBar: const CustomAppBar(title: 'Favorites'),
      body: Column(
        children: [
          PlacesList(places: favoritePlaces),
        ],
      ),
    );
  }
}
