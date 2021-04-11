import 'package:uuid/uuid.dart';

class Vehicle {
  String id;
  String manufacturer;
  String model;
  int yearOfProduction;
  String shortName;
  double initialMileage;
  String fuelType;

  Vehicle(String manufacturer, String model, int yearOfProduction,
      String shortName, double initialMileage, String fuelType) {
    var uuid = Uuid();
    this.id = uuid.v4();
    this.manufacturer = manufacturer;
    this.model = model;
    this.yearOfProduction = yearOfProduction;
    this.shortName = shortName;
    this.initialMileage = initialMileage;
    this.fuelType = fuelType;
  }
}
