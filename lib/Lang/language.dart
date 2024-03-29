class Language {
  final int id;
  final String name;
  final String languageCode;

  Language(this.id, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "French", "fr"),
      Language(2, "English", "en"),
      Language(3, "اَلْعَرَبِيَّةُ", "ar"),
    ];
  }
}
