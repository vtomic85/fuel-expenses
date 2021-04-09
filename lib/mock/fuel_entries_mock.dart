import 'package:fuel_expenses/model/_model.dart';

class FuelEntriesMock {
  static List<FuelEntry> fuelEntries = [
    /* Vehicle 1 */
    FuelEntry(1, 1, 8, 1248, 120100),
    FuelEntry(2, 1, 26, 4056, 120400),
    FuelEntry(3, 1, 15, 2340, 120600),
    /* Vehicle 2 */
    FuelEntry(4, 2, 20, 3220, 50200),
    FuelEntry(5, 2, 35, 5635, 50500),
    FuelEntry(6, 2, 48, 7728, 51000),
    /* Vehicle 3 */
    FuelEntry(7, 3, 6, 990, 100),
    FuelEntry(8, 3, 5, 825, 200),
    FuelEntry(9, 3, 14, 2310, 500),
  ];
}
