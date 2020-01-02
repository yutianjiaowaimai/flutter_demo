class Post{

  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> list = [
  Post(
    title: "test1",
    author: "test1",
    imageUrl: "https://img.51miz.com/preview/element/00/01/09/32/E-1093205-F85AB62A.jpg"
  ),
  Post(
      title: "test2",
      author: "test2",
      imageUrl: "https://img.51miz.com/preview/element/00/01/09/32/E-1093205-F85AB62A.jpg"
  ),
  Post(
      title: "test3",
      author: "test3",
      imageUrl: "https://img.51miz.com/preview/element/00/01/09/32/E-1093205-F85AB62A.jpg"
  ),
  Post(
      title: "test4",
      author: "test4",
      imageUrl: "https://img.51miz.com/preview/element/00/01/09/32/E-1093205-F85AB62A.jpg"
  ),
  Post(
      title: "test5",
      author: "test5",
      imageUrl: "https://img.51miz.com/preview/element/00/01/09/32/E-1093205-F85AB62A.jpg"
  ),

];