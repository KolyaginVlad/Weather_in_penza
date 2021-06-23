class Coord {
  double _lon;

  double _lat;

  Coord.fromJson(Map<String, dynamic> json):
        this._lon = json["lon"],
        this._lat = json["lat"];

  double get lon => _lon;

  double get lat => _lat;
}
