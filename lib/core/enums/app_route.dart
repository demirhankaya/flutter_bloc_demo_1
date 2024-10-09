enum AppRouteName {
  Login('/login'),
  Home('/home');

  const AppRouteName(this.path);
  final String path;

  String get withoutSplash => path.replaceFirst('/', '');
}
