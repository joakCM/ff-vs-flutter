import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelmate_flutter/providers/places_provider.dart';

class PlacesSearch extends StatelessWidget {
  const PlacesSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlacesModel>(
      builder: (context, placesModel, child) {
        return TextField(
          decoration: InputDecoration(
            hintText: 'Search listings...',
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          onChanged: (value) => placesModel.updateSearchTerm(value),
        );
      },
    );
  }
}
