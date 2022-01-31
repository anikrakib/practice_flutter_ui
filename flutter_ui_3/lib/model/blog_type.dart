class BlogType {
  final String blogTypeName;
  final String blogTypeImage;
  final int totalPost;
  BlogType({
    required this.blogTypeName,
    required this.blogTypeImage,
    required this.totalPost,
  });
}

List<BlogType> blogTypes = [
  BlogType(
      blogTypeName: 'Sports',
      blogTypeImage: 'assets/blogType/sports.jpg',
      totalPost: 152),
  BlogType(
      blogTypeName: 'Cars',
      blogTypeImage: 'assets/blogType/cars.jpg',
      totalPost: 182),
  BlogType(
      blogTypeName: 'Mobile',
      blogTypeImage: 'assets/blogType/mobiles.png',
      totalPost: 140),
  BlogType(
      blogTypeName: 'Travel',
      blogTypeImage: 'assets/blogType/travel.jpg',
      totalPost: 85),
  BlogType(
      blogTypeName: 'Bike',
      blogTypeImage: 'assets/blogType/bike.webp',
      totalPost: 102),
  BlogType(
      blogTypeName: 'By Cycle',
      blogTypeImage: 'assets/blogType/by_cycle.jpg',
      totalPost: 127),
];
