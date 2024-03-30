class MoviedbVideosResponse {
  final int id;
  final List<Result> results;

  MoviedbVideosResponse({required this.id, required this.results});

  factory MoviedbVideosResponse.fromJson(Map<String, dynamic> json) =>
      MoviedbVideosResponse(
          id: json['id'],
          results: List<Result>.from(
              json['results'].map((x) => Result.fromJson(x))
          )
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'results': List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  final String id;
  final String iso6391;
  final String iso31661;
  final String key;
  final String name;
  final String site;
  final int size;
  final String type;
  final bool official;
  final DateTime publishedAt;

  Result({
    required this.id,
    required this.iso6391,
    required this.iso31661,
    required this.key,
    required this.name,
    required this.site,
    required this.size,
    required this.type,
    required this.official,
    required this.publishedAt
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json['id'],
    iso6391: json['iso_639_1'],
    iso31661: json['iso_3166_1'],
    key: json['key'],
    name: json['name'],
    site: json['site'],
    size: json['size'],
    type: json['type'],
    official: json['official'],
    publishedAt: DateTime.parse(json['published_at'])
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'iso_639_1': iso6391,
    'iso_3166_1': iso31661,
    'key': key,
    'name': name,
    'site': site,
    'size': size,
    'type': type,
    'official': official,
    'published_at': publishedAt.toIso8601String()
  };
}
