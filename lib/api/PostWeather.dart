import 'Coord.dart';
import 'Clouds.dart';
import 'Main.dart';
import 'Sys.dart';
import 'Weather.dart';
import 'Wind.dart';


class PostWeather {

  Coord _coord;

  List<dynamic> _weather;

  String _base;

  Main _main;

  int _visibility;

  Wind _wind;

  Clouds _clouds;

  int _dt;

  Sys _sys;

  int _id;

  String _name;

  int _cod;

  Coord get coord => _coord;

  List<dynamic> get weather => _weather;

  String get base => _base;

  Main get main => _main;

  int get visibility => _visibility;

  Wind get wind => _wind;

  Clouds get clouds => _clouds;

  int get dt => _dt;

  Sys get sys => _sys;

  int get id => _id;

  String get name => _name;

  int get cod => _cod;

  PostWeather.fromJson(Map<String, dynamic> json):
      this._coord = Coord.fromJson(json["coord"]),
      this._weather = json["weather"].map((e)=>Weather.fromJson(e)).toList(),
      this._base = json["base"],
      this._main = Main.fromJson(json["main"]),
      this._visibility = json["visibility"],
      this._wind = Wind.fromJson(json["wind"]),
      this._clouds = Clouds.fromJson(json["clouds"]),
      this._dt = json["dt"],
      this._sys = Sys.fromJson(json["sys"]),
      this._id = json["id"],
      this._name = json["name"],
      this._cod = json["cod"];

}
