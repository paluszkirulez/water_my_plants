

class Plant{
  String _name;
  DateTime _plantDate;
  String _family;
  String _insolation;
  int wateringFrequency;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  DateTime get plantDate => _plantDate;

  String get insolation => _insolation;

  set insolation(String value) {
    _insolation = value;
  }

  String get family => _family;

  set family(String value) {
    _family = value;
  }

  set plantDate(DateTime value) {
    _plantDate = value;
  }

  Plant(this._name, this._plantDate, this._family, this._insolation,
      this.wateringFrequency);

  @override
  String toString() {
    return 'Plant $_name created, plant date: $_plantDate, pant family: $_family, insolation requested: $_insolation, water it every: $wateringFrequency days}';
  }


}