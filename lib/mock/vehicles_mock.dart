import 'package:fuel_expenses/model/fuel_type.dart';
import 'package:fuel_expenses/model/_model.dart';

class VehiclesMock {
  static final List<Vehicle> vehicles = [
    Vehicle(1, 'Volvo', 'XC 90 4WD', 2005, 'Volvo', 120000, FuelType.DIESEL),
    Vehicle(2, 'Mercedes', 'SL 500', 2019, 'Mecka', 50000, FuelType.DIESEL),
    Vehicle(3, 'Skoda', 'Fabia 1.0 TSI', 2021, 'Fabija', 0, FuelType.PETROL),
  ];
}
