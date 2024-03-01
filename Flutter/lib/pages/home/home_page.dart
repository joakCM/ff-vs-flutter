import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelmate_flutter/pages/home/widgets/places_list/places_list.dart';
import 'package:travelmate_flutter/providers/places_provider.dart';
import 'package:travelmate_flutter/widgets/custom_app_bar.dart';
import 'package:travelmate_flutter/pages/home/widgets/places_search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'TravelMate',
        showFavoritesAction: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const PlacesSearch(),
            const SizedBox(height: 14),
            Consumer<PlacesModel>(
              builder: (context, placesModel, child) {
                final placesList = placesModel.places;

                return PlacesList(places: placesList);
              },
            ),
          ],
        ),
      ),
    );
  }
}
