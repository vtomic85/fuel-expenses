import 'package:flutter/material.dart';

class AddNewVehiclePage extends StatefulWidget {
  @override
  _AddNewVehiclePageState createState() => _AddNewVehiclePageState();
}

class _AddNewVehiclePageState extends State<AddNewVehiclePage> {
  TextEditingController manufacturerController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController yearOfProductionController = TextEditingController();
  TextEditingController initialMileageController = TextEditingController();
  TextEditingController fuelTypeController = TextEditingController();
  TextEditingController shortNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new vehicle'),
      ),
      body: Column(
        children: [
          Text('Manufacturer:'),
          TextField(
              controller: manufacturerController,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {});
              }),
          Text('Model:'),
          TextField(
              controller: modelController,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {});
              }),
          Text('Year of production:'),
          TextField(
              controller: yearOfProductionController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {});
              }),
          Text('Initial mileage:'),
          TextField(
              controller: initialMileageController,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {});
              }),
          Text('Fuel type:'),
          TextField(
              controller: fuelTypeController,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {});
              }),
          Text('Short name:'),
          TextField(
              controller: shortNameController,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {});
              }),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
