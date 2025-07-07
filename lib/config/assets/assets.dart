enum AssetsUrl {
  facebookLogo(url: "assets/facebook.svg"),

  wallpaper1(url: "assets/wallpapers/1.jpeg"),
  wallpaper2(url: "assets/wallpapers/2.jpeg"),
  wallpaper3(url: "assets/wallpapers/3.jpeg"),
  wallpaper4(url: "assets/wallpapers/4.jpeg"),
  wallpaper5(url: "assets/wallpapers/5.jpeg"),
  wallpaper6(url: "assets/wallpapers/6.jpeg"),

  avatar1(url: "assets/users/1.jpg"),
  avatar2(url: "assets/users/2.jpg"),
  avatar3(url: "assets/users/3.jpg"),
  avatar4(url: "assets/users/4.jpg"),
  avatar5(url: "assets/users/5.jpg"),
  avatar6(url: "assets/users/6.jpg"),
  avatar7(url: "assets/users/7.jpg"),
  avatar8(url: "assets/users/8.jpg");

  const AssetsUrl({ 
    required String url 
  }) : _url = url;

  final String _url;
  String get url => _url;
}

enum Reactions {
  like("assets/emojis/like.svg"),
  love("assets/emojis/heart.svg"),
  laughing("assets/emojis/laughing.svg"),
  sad("assets/emojis/sad.svg"),
  shocking("assets/emojis/shocked.svg"),
  angry("assets/emojis/angry.svg");

  final String _url;
  const Reactions(this._url);

  String call() => _url;
}