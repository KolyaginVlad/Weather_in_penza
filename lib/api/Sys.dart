class Sys {
  Sys.fromJson(Map<String, dynamic> json)
      : this._type = (json["type"]==null) ? 0: json["type"],
        this._id = (json["id"]==null) ? 0: json["id"],
        this._message = (json["message"]==null) ? 0: json["message"],
        this._country = json["country"],
        this._sunrise = (json["sunrise"]==null) ? 0: json["sunrise"],
        this._sunset = (json["sunset"]==null) ? 0: json["sunset"];

  int _type;

  int _id;

  double _message;

  String _country;

  int _sunrise;

  int _sunset;

  int get type => _type;

  int get id => _id;

  double get message => _message;

  String get country => _country;

  int get sunrise => _sunrise;

  int get sunset => _sunset;
}
