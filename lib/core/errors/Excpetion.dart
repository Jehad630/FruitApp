class customeException implements Exception {
  final String message;
  customeException({required this.message});
  @override
  String toString() {
    return message;
  }
}
