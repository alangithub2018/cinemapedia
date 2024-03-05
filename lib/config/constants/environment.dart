import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String TheMovieDBKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'No API Key';
}