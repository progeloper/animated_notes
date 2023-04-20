class NoteModel{
  final String title;
  final String content;
  final String date;
  final bool development;
  final bool planning;
  final bool design;
  final bool self;
  final List filters;


//<editor-fold desc="Data Methods">


  const NoteModel({
    required this.title,
    required this.content,
    required this.date,
    required this.development,
    required this.planning,
    required this.design,
    required this.self,
    required this.filters,
  });



  NoteModel copyWith({
    String? title,
    String? content,
    String? date,
    bool? development,
    bool? planning,
    bool? design,
    bool? self,
    List? filters,
  }) {
    return NoteModel(
      title: title ?? this.title,
      content: content ?? this.content,
      date: date ?? this.date,
      development: development ?? this.development,
      planning: planning ?? this.planning,
      design: design ?? this.design,
      self: self ?? this.self,
      filters: filters ?? this.filters,
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'content': this.content,
      'date': this.date,
      'development': this.development,
      'planning': this.planning,
      'design': this.design,
      'self': this.self,
      'filters': this.filters,
    };
  }

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      title: map['title'] as String,
      content: map['content'] as String,
      date: map['date'] as String,
      development: map['development'] as bool,
      planning: map['planning'] as bool,
      design: map['design'] as bool,
      self: map['self'] as bool,
      filters: map['filters'] as List,
    );
  }


//</editor-fold>
}