import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

import '../models/moviedb/movie_details.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
          : 'https://cdn11.bigcommerce.com/s-nq6l4syi/images/stencil/1280x1280/products/55211/567952/107135-1024__46116.1664441947.jpg?c=2?imbypass=on',
      genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: (moviedb.posterPath != '')
          ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
          : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQwWRek7L3RCJ0yCsrCx44ajb-eiLCB6flIGabD_ZEsMh3T_n0h5D9Qzo_aCC3iX03Las&usqp=CAU',
      releaseDate: moviedb.releaseDate != null ? moviedb.releaseDate! : DateTime.now(),
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount);

  static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath != '')
       ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}' 
       : 'https://cdn11.bigcommerce.com/s-nq6l4syi/images/stencil/1280x1280/products/55211/567952/107135-1024__46116.1664441947.jpg?c=2?imbypass=on',
      genreIds: moviedb.genres.map((e) => e.name).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: (moviedb.posterPath != '')
       ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}' 
       : 'https://cdn11.bigcommerce.com/s-nq6l4syi/images/stencil/1280x1280/products/55211/567952/107135-1024__46116.1664441947.jpg?c=2?imbypass=on',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount
  );
}
