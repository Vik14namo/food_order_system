// import 'package:flutter/material.dart';

// class ReservationSheet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Reservation Sheet'),
//       ),
//       body: SingleChildScrollView( // Allow scrolling if content overflows
//         child: DataTable(
//           columns: [
//             DataColumn(label: Text('Name')),
//             DataColumn(label: Text('Time')),
//             DataColumn(label: Text('Phone Number')),
//             DataColumn(label: Text('')), // Empty label for buttons
//           ],
//           rows: [
//             DataRow(
//               cells: [
//                 DataCell(Text('John Doe')),
//                 DataCell(Text('10:00 AM')),
//                 DataCell(Text('(123) 456-7890')),
//                 DataCell(
//                   Row(
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.check),
//                         onPressed: () {
//                           // Handle apply button press (e.g., confirm reservation)
//                           print('Apply button pressed for John Doe');
//                         },
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.delete),
//                         onPressed: () {
//                           // Handle delete button press (e.g., remove reservation)
//                           print('Delete button pressed for John Doe');
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             // Add more DataRow widgets for additional reservations
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ReservationSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reserve',
          style: TextStyle(color: Colors.black87), // Darker text for contrast
        ),
        backgroundColor: const Color.fromARGB(
            185, 174, 216, 210), // Light gray app bar background
      ),
      body: SingleChildScrollView(
        child: DataTable(
          // Set background color for alternating rows
          dataRowColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState)) {
              return Color.fromARGB(
                  255, 246, 244, 244); // Lighter gray for even rows
            }
            return const Color.fromARGB(
                255, 249, 243, 243); // Darker gray for odd rows
          }),
          // Table decoration for borders and rounded corners
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 187, 187, 187)),
            borderRadius: BorderRadius.circular(8.0),
          ),
          // Column styling with padding and text color
          columnSpacing: 16.0, // Add spacing between columns
          columns: [
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                'Time',
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                'Phone Number',
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(label: Text('')), // Empty label for buttons
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('John Doe')),
                DataCell(Text('10:00 AM')),
                DataCell(Text('(123) 456-7890')),
                DataCell(
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.check,
                            color: Colors.green), // Green check icon
                        onPressed: () {
                          print('Apply button pressed for John Doe');
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete,
                            color: Colors.red), // Red delete icon
                        onPressed: () {
                          print('Delete button pressed for John Doe');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Add more DataRow widgets for additional reservations
          ],
        ),
      ),
    );
  }
}
