import 'package:flutter/material.dart';
import 'package:fuel_expenses/common/_common.dart';
import 'package:fuel_expenses/mock/_mock.dart';
import 'package:fuel_expenses/model/_model.dart';

class VehicleOverviewPage extends StatefulWidget {
  @override
  _VehicleOverviewPageState createState() => _VehicleOverviewPageState();
}

class _VehicleOverviewPageState extends State<VehicleOverviewPage> {
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments;
    final Vehicle vehicle = arguments['vehicle'];
    double totalConsumption = 0;
    double totalPrice = 0;
    double totalMileage = 0;
    double averageConsumption = 0;
    double pricePerKm = 0;

    List<FuelEntry> fuelEntries = FuelEntriesMock.fuelEntries
        .where((entry) => entry.vehicleId == vehicle.id)
        .toList();
    if (fuelEntries.isNotEmpty) {
      for (FuelEntry entry in fuelEntries) {
        totalConsumption += entry.amount;
        totalPrice += entry.price;
      }
      totalMileage = fuelEntries.last.currentMileage - vehicle.initialMileage;
      averageConsumption = totalConsumption * 100 / totalMileage;
      pricePerKm = totalPrice / totalMileage;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Text(
                    vehicle.manufacturer +
                        ' ' +
                        vehicle.model +
                        ' (' +
                        vehicle.yearOfProduction.toString() +
                        ')',
                    style: Styles.vehicleOverviewTitleStyle,
                  ),
                ),
              ),
              buildVehicleOverviewRow(
                  'Total consumption (l)', totalConsumption),
              buildVehicleOverviewRow('Total price (RSD)', totalPrice),
              buildVehicleOverviewRow('Total mileage (km)', totalMileage),
              buildVehicleOverviewRow(
                  'Average consumption (l/100 km)', averageConsumption),
              buildVehicleOverviewRow('Price per km (RSD)', pricePerKm),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/addNewFuelEntry');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add),
                Text('Add new fuel entry'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildVehicleOverviewRow(String label, double value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Styles.vehicleOverviewLabelStyle,
          ),
          Text(
            value.toStringAsFixed(2),
            style: Styles.vehicleOverviewValueStyle,
          ),
        ],
      ),
    );
  }
}
