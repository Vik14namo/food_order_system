import 'package:flutter/material.dart';
//import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/menulist.dart';

class TableCards extends StatelessWidget {
  const TableCards(
      {Key? key,
      required this.tableNumber,
      required this.onPressedView,
      required this.onPressedOrder})
      : super(key: key);

  final String tableNumber;
  final VoidCallback onPressedView;
  final VoidCallback onPressedOrder;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(111, 124, 162, 163),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 5.0, right: 2.0, bottom: 15.0, top: 15.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                const Icon(Icons.table_restaurant),
                const SizedBox(
                  width: 20.0,
                  height: 15.0,
                ),
                Text(
                  'Table No $tableNumber',
                  style: TextStyle(
                      color: Color.fromARGB(255, 11, 11, 11), fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: onPressedView,
                  child: const Text('View'),
                ),
                const SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: onPressedOrder,
                  child: const Text('Order'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TableSelection extends StatefulWidget {
  const TableSelection({Key? key}) : super(key: key);

  @override
  State<TableSelection> createState() => _TableSelectionState();
}

class _TableSelectionState extends State<TableSelection> {
  int? selectedTable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          final tableNumber = index + 1;
          return TableCards(
            tableNumber: tableNumber.toString(),
            onPressedView: () => handleViewButton(tableNumber),
            onPressedOrder: () => handleOrderButton(tableNumber),
          );
        },
      ),
    );
  }

  void handleViewButton(int tableNumber) {
    // Implement logic for navigating to the table view screen
    // You can use Navigator.push() to navigate to a new screen
    // Pass the table number as an argument to the new screen
    print('View button pressed for Table No $tableNumber');
  }

  void handleOrderButton(int tableNumber) {
    // Implement logic for taking order for the selected table
    // You can display a dialog or navigate to an order screen
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }
}
