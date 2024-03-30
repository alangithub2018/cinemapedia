import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MoviePosterLink extends StatelessWidget {
  final Movie movie;

  const MoviePosterLink({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {

    final random = Random();

    return FadeInUp(
      from: random.nextInt(100) + 80,
      delay: Duration(milliseconds: random.nextInt(450)),
      child: GestureDetector(
        onTap: () {
          context.push('/home/0/movie/${movie.id}');
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: FadeInImage(
            height: 180,
            placeholder: const AssetImage('assets/loaders/loader.gif'),
            image: NetworkImage(movie.posterPath),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}