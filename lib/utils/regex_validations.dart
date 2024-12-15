extension UrlValidation on String {
  bool get isValidUrl {
    final urlPattern =
        r'^(https?:\/\/)?([\w\-]+(\.[\w\-]+)+)(:[0-9]+)?(\/[\w\-\.]*)*(\?[\w\-=&]*)?(#[\w\-]*)?$';
    final regex = RegExp(urlPattern);
    return regex.hasMatch(this);
  }
}
