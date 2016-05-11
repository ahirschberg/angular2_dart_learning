class Hero {
  static int nextId = 0;
  int id;
  String name;
  String power;
  String alterEgo;
  bool isSecret;

  Hero(this.name, this.power,
      [this.alterEgo, this.isSecret = false])
    : id = nextId++;

  String toString() => '[$id] $name ($alterEgo). Super power: $power '
      + '${isSecret ? '#' : '-'}';
}

