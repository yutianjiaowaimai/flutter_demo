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
    imageUrl: "http://192.168.1.166:7060/fdoctor/menu/icon_home_jkda.png"
  ),
  Post(
      title: "test2",
      author: "test2",
      imageUrl: "http://192.168.1.166:7060/fdoctor/menu/icon_home_jkda.png"
  ),
  Post(
      title: "test3",
      author: "test3",
      imageUrl: "http://192.168.1.166:7060/fdoctor/menu/icon_home_jkda.png"
  ),
  Post(
      title: "test4",
      author: "test4",
      imageUrl: "http://192.168.1.166:7060/fdoctor/menu/icon_home_jkda.png"
  ),
  Post(
      title: "test5",
      author: "test5",
      imageUrl: "http://192.168.1.166:7060/fdoctor/menu/icon_home_jkda.png"
  ),

];