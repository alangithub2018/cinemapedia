

import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) {
    return Actor(
      id: cast.id,
      name: cast.name,
      profilePath: cast.profilePath != null
          ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}'
          : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZdsaJSfD6V-6Q3SEeU-EpsBuPQKAAreid_F0ut-l2xh-t11vJZc_iwajj3mVMDQ1EB60&usqp=CAU',
      character: cast.character
    );
  }
}