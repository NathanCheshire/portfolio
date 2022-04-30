class AboutMe {
  AboutMe({required this.title, required this.description});
  final String title;
  final String description;

  factory AboutMe.fromJson(Map<String, dynamic> data) {
    final title = data['title'] as String;
    final description = data['description'] as String;
    return AboutMe(title: title, description: description);
  }
}
