class Todo {
  int id;
  String title;

//<editor-fold desc="Data Methods">
  Todo({
    required this.id,
    required this.title,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Todo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title);

  @override
  int get hashCode => id.hashCode ^ title.hashCode;

  @override
  String toString() {
    return 'Todo{' + ' id: $id,' + ' title: $title,' + '}';
  }

  Todo copyWith({
    int? id,
    String? title,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }

//</editor-fold>
}