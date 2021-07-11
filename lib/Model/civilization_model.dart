
class CivilizationModel{
  int ? id;
  String ? name;
  String ? expansion;
  String ? armyType;
  String ? uniqueUnit;



  CivilizationModel({
    this.id,
    this.name,
    this.expansion,
    this.armyType,
    this.uniqueUnit,
  
    });

   factory CivilizationModel.fromMapJson(Map<String, dynamic> data) => CivilizationModel(
        id: data['id'],
        name: data['name'],
        expansion: data['expansion'],
        armyType: data['armyType'],
        uniqueUnit: data['uniqueUnit'],
      );
    }
  