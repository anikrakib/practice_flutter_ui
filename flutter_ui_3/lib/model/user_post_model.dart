class Post {
  final String postImagePath;
  final String postTitle;
  final int totalComment;
  final int totalLike;
  Post({
    required this.postImagePath,
    required this.postTitle,
    required this.totalComment,
    required this.totalLike,
  });
}

final List<Post> posts = [
  Post(
      // postImagePath: "assets/postImage/post5.webp",
      postImagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRirtWNNslaXmolXhHWK33_JYZLOrcQO2H2cQ&usqp=CAU',
      postTitle:
          "Silhouette of tree near body of water during beautiful sunset",
      totalComment: 1200,
      totalLike: 6299),
  Post(
      //postImagePath: "assets/postImage/post1.jpg",
      postImagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTRKTbQ3_i0XZ-RHe5aE_a3djenh2ramdZAQ&usqp=CAU',
      postTitle:
          "When you see purple skies, it's because light has scattered in a different way than usual. ",
      totalComment: 120,
      totalLike: 2919),
  Post(
      //postImagePath: "assets/postImage/post2.jpg",
      postImagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2iXDlY9qS108IbhIMDQhTRdTp6WYPUty_vA&usqp=CAU',
      postTitle: "Man Made -  Manhattan Bridge",
      totalComment: 82,
      totalLike: 895),
  Post(
      //postImagePath: "assets/postImage/post3.jpg",
      postImagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuImswNkS1xefFvMs4T-_NqT3cOqQJbGp4dQ&usqp=CAU',
      postTitle:
          "First red skies, now purple skies. Here's why these unnatural colors are happening.",
      totalComment: 150,
      totalLike: 2452),
  Post(
      //postImagePath: "assets/postImage/post4.jpg",
      postImagePath:
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
      postTitle: "Purple Animal Ears 4k Ultra HD Wallpaper",
      totalComment: 120,
      totalLike: 2515),
];
