class Main {
  double _temp;

  int _pressure;

  int _humidity;

  double _tempMin;

  double _tempMax;

  Main.fromJson(Map<String, dynamic> json):
        this._temp = json["temp"],
        this._pressure = json["pressure"],
        this._humidity = json["humidity"],
        this._tempMin =  (json["tempMin"] == null) ? 0: json["tempMin"],
        this._tempMax = (json["tempMax"] == null) ? 0: json["tempMax"];


  double get temp => _temp;

  int get pressure => _pressure;

  int get humidity => _humidity;

  double get tempMin => _tempMin;

  double get tempMax => _tempMax;
}
