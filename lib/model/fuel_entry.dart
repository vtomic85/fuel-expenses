import 'package:uuid/uuid.dart';

class FuelEntry {
  String id;
  String vehicleId;
  double amount;
  double price;
  double currentMileage;

  FuelEntry(
      String vehicleId, double amount, double price, double currentMileage) {
    var uuid = Uuid();
    this.id = uuid.v4();
    this.vehicleId = vehicleId;
    this.amount = amount;
    this.price = price;
    this.currentMileage = currentMileage;
  }
}
