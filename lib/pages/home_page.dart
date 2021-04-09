import 'package:flutter/material.dart';
import 'package:fuel_expenses/common/_common.dart';
import 'package:fuel_expenses/mock/_mock.dart';
import 'package:fuel_expenses/model/_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Vehicle> vehicles;

  @override
  void initState() {
    super.initState();
    vehicles = loadVehicles();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Fuel Expenses'),
              IconButton(
                icon: Icon(
                  Icons.help,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/about');
                },
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Your vehicles',
                    style: Styles.yourVehiclesTitleStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: vehicles.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                    child: ListTile(
                      tileColor: Colors.red,
                      title: Text(
                        vehicles[index].manufacturer +
                            ' ' +
                            vehicles[index].model +
                            ' (' +
                            vehicles[index].yearOfProduction.toString() +
                            ')',
                        style: Styles.vehicleTileStyle,
                      ),
                      trailing: Icon(
                        Icons.play_arrow_sharp,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/vehicleOverview',
                            arguments: {'vehicle': vehicles[index]});
                      },
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  Text(' Add new vehicle'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Vehicle> loadVehicles() {
    return VehiclesMock.vehicles;
  }
}
