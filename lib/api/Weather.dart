class Weather {
  int _id;

  String _main;

  String _description;

  String _icon;

  int get id => _id;

  String get main => _main;

  String get description => _description;

  String get icon => _icon;

  Weather.fromJson(Map<String, dynamic> json)
      : this._id = json["id"],
        this._main = json["main"],
        this._description = json["description"],
        this._icon = json["icon"];
}
