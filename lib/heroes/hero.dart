class Hero {
  int number;
  String name;
  String power;
  String alterEgo;
  bool isSecret;

  Hero(this.number, this.name, this.power,
      [this.alterEgo, this.isSecret = false]);

  String toString() => '$number: $name ($alterEgo). Super power: $power';
}

