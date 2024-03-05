import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:travelmate_flutter/data/places/place.dart';
import 'package:travelmate_flutter/providers/places_provider.dart';

class PlaceCard extends StatefulWidget {
  final Place place;

  const PlaceCard({super.key, required this.place});

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  @override
  Widget build(BuildContext context) {
    final favoritePlaces = context.read<PlacesProvider>().favoritePlaces;

    final place = widget.place;
    final name = place.name;
    final image = place.image;
    final rating = place.rating;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network(image),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNameAndRating(name: name, rating: rating),
                _buildFavoriteIcon(favoritePlaces: favoritePlaces, place: place)
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _buildNameAndRating({required String name, required double rating}) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: 1),
        Row(
          children: [
            RatingBar.builder(
              initialRating: rating,
              ignoreGestures: true,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) => const Icon(
                Icons.radio_button_checked,
                color: Colors.black,
              ),
              onRatingUpdate: (_) {},
              itemSize: 14,
            ),
            const SizedBox(width: 6),
            Text(
              rating.toString(),
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }

  IconButton _buildFavoriteIcon({
    required List<Place> favoritePlaces,
    required Place place,
  }) {
    final placesProvider = context.read<PlacesProvider>();
    final isInFavorites = favoritePlaces.contains(place);

    return IconButton(
      icon: Icon(
        isInFavorites ? Icons.star : Icons.star_border,
        color: Colors.amber,
      ),
      onPressed: () {
        if (isInFavorites) {
          placesProvider.removeFromFavorites(place);
        } else {
          placesProvider.addToFavorites(place);
        }
      },
    );
  }
}
