import 'package:flutter/material.dart';

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
              print(fuelAmountController.text +
                  ' L, ' +
                  priceController.text +
                  ' RSD, ' +
                  currentMileageController.text +
                  ' km');
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
