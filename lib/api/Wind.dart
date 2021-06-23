class Wind {
  double _speed;

  int _deg;

  double get speed => _speed;

  int get deg => _deg;

  Wind.fromJson(Map<String, dynamic> json)
      : this._speed = json["speed"],
        this._deg = json["deg"];
}
