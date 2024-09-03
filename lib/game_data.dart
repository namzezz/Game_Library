class GameData {
  final String id;
  final String name;
  final String imageURL;
  final double price;
  final String developer;
  final String releaseDate;
  final List<String> compatiblePlatforms;

  GameData({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.price,
    required this.developer,
    required this.releaseDate,
    required this.compatiblePlatforms,
  });
}
GameData sampleGameData = GameData(
  id: '1',
  name: 'Sample Game',
  imageURL: 'assets/apex.png',
  price: 19.99,
  developer: 'Game Studio',
  releaseDate: 'May 2023',
  compatiblePlatforms: ['Windows', 'Mac', 'Linux'],
);


