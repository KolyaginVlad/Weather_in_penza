class Clouds {
    int _all;
    Clouds.fromJson(Map<String, dynamic> json):
        this._all = json["all"];

     int get all => _all;
}
