class Hero {
  String name;
  String power;
  String alterEgo;
  bool isSecret;

  Hero(this.name, this.power,
      [this.alterEgo, this.isSecret = false]);

  String toString() => '$name ($alterEgo). Super power: $power '
      + '${isSecret ? '#' : '-'}';
}

