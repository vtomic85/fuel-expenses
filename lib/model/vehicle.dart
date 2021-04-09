import 'fuel_type.dart';

class Vehicle {
  int id;
  String manufacturer;
  String model;
  int yearOfProduction;
  String name;
  double initialMileage;
  FuelType fuelType;

  Vehicle(this.id, this.manufacturer, this.model, this.yearOfProduction,
      this.name, this.initialMileage, this.fuelType);
}
