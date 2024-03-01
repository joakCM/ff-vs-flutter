import 'package:flutter/material.dart';
import 'package:travelmate_flutter/data/places/place.dart';
import 'package:travelmate_flutter/pages/home/widgets/place_card.dart';

class PlacesList extends StatelessWidget {
  final List<Place> places;

  const PlacesList({
    super.key,
    required this.places,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];

          return PlaceCard(place: place);
        },
      ),
    );
  }
}
