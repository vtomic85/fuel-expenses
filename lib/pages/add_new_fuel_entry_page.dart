import 'package:flutter/material.dart';
import 'package:fuel_expenses/mock/_mock.dart';
import 'package:fuel_expenses/model/_model.dart';

class AddNewFuelEntryPage extends StatefulWidget {
  @override
  _AddNewFuelEntryPageState createState() => _AddNewFuelEntryPageState();
}

class _AddNewFuelEntryPageState extends State<AddNewFuelEntryPage> {
  TextEditingController fuelAmountController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController currentMileageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments;
    final Vehicle vehicle = arguments['vehicle'];
    String vehicleId = vehicle.id;

    return Scaffold(
      appBar: AppBar(
        title: Text('Add new fuel entry'),
      ),
      body: ListView(
        children: [
          Text('Fuel amount (L):'),
          TextField(
            controller: fuelAmountController,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {});
            },
          ),
          Text('Price (RSD):'),
          TextField(
            controller: priceController,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {});
            },
          ),
          Text('Current mileage (km)'),
          TextField(
            controller: currentMileageController,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {});
            },
          ),
          ElevatedButton(
            onPressed: () {
              FuelEntriesMock.fuelEntries.add(FuelEntry(
                  vehicleId,
                  double.parse(fuelAmountController.text),
                  double.parse(priceController.text),
                  double.parse(currentMileageController.text)));
              Navigator.of(context).pop();
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    currentMileageController.dispose();
    priceController.dispose();
    fuelAmountController.dispose();
    super.dispose();
  }
}
