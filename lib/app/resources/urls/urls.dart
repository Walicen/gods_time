class Urls {
  static const String baseUrl = 'https://api.github.com';
  static const String search = '/search/repositories';

  static toMap() {
    return {
      'baseUrl': baseUrl,
      'search': search,
    };
  }
}
