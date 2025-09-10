class Item {
  final int id;
  final String name;
  final bool favourite;

  Item({required this.id, required this.name, required this.favourite});

  Item copyWith({String? name, int? id, bool? favourite}) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      favourite: favourite ?? this.favourite,
    );
  }
}
