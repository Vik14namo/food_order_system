// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Food Menu Grid'),
//         ),
//         body: FoodMenuGrid(),
//       ),
//     );
//   }
// }

// class FoodMenuGrid extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     int crossAxisCount;
//     if (screenWidth < 600) {
//       crossAxisCount = 2;
//     } else {
//       crossAxisCount = 4;
//     }
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GridView.count(
//         crossAxisCount: crossAxisCount, // Adjust columns as needed
//         crossAxisSpacing: 8.0,
//         mainAxisSpacing: 8.0,
//         children: [
//           FoodItem(
//             icon: Icons.circle,
//             iconColor: Colors.red,
//             code: 'R-15',
//             name: 'Chicken Kolhapuri ',
//           ),
//           FoodItem(
//             icon: Icons.circle,
//             iconColor: Colors.red,
//             code: 'R-16',
//             name: 'Chicken lolipop',
//           ),
//           FoodItem(
//             icon: Icons.circle,
//             iconColor: Colors.green,
//             code: 'R-17',
//             name: 'Paneer Noodles',
//           ),
//           // ... Add remaining FoodItem widgets
//         ],
//       ),
//     );
//   }
// }

// class FoodItem extends StatelessWidget {
//   final IconData icon;
//   final Color iconColor;
//   final String code;
//   final String name;

//   FoodItem({
//     required this.icon,
//     required this.iconColor,
//     required this.code,
//     required this.name,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: //BoxDecoration(
//           //   color: Colors.grey[400],
//           //   borderRadius: BorderRadius.circular(8.0),
//           //   boxShadow: [
//           //     BoxShadow(
//           //       color: Colors.black26,
//           //       blurRadius: 6.0,
//           //       spreadRadius: 2.0,
//           //       offset: Offset(2.0, 2.0),
//           //     ),
//           //   ],
//           // ),
//           BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Color.fromARGB(111, 124, 162, 163),
//               boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: Offset(0, 3),
//             )
//           ]),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Icon(icon, color: iconColor),
//               ],
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: Wrap(
//                 // Wrap the Text widget
//                 children: [
//                   Text(
//                     name,
//                     style: TextStyle(
//                       fontSize: 20, // Increased text size
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 11, 11, 11),
//                     ),
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   Text(
//                     code,
//                     style: TextStyle(
//                       fontSize: 15, // Increased text size
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 43, 42, 42),
//                     ),
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Food Menu Grid'),
//         ),
//         body: FoodMenuGrid(),
//       ),
//     );
//   }
// }

// class FoodMenuGrid extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     int crossAxisCount;
//     if (screenWidth < 600) {
//       crossAxisCount = 2;
//     } else {
//       crossAxisCount = 4;
//     }
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GridView.count(
//         crossAxisCount: crossAxisCount, // Adjust columns as needed
//         crossAxisSpacing: 8.0,
//         mainAxisSpacing: 8.0,
//         children: [
//           FoodItem(
//             icon: Icons.circle,
//             iconColor: Colors.red,
//             code: 'R-15',
//             name: 'Chicken Kolhapuri',
//           ),
//           FoodItem(
//             icon: Icons.circle,
//             iconColor: Colors.red,
//             code: 'R-16',
//             name: 'Chicken Lollipop',
//           ),
//           FoodItem(
//             icon: Icons.circle,
//             iconColor: Colors.green,
//             code: 'R-17',
//             name: 'Paneer Noodles',
//           ),
//           // ... Add remaining FoodItem widgets
//         ],
//       ),
//     );
//   }
// }

// class FoodItem extends StatefulWidget {
//   final IconData icon;
//   final Color iconColor;
//   final String code;
//   final String name;

//   FoodItem({
//     required this.icon,
//     required this.iconColor,
//     required this.code,
//     required this.name,
//   });

//   @override
//   _FoodItemState createState() => _FoodItemState();
// }

// class _FoodItemState extends State<FoodItem> {
//   bool isFavorite = false;

//   void toggleFavorite() {
//     setState(() {
//       isFavorite = !isFavorite;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Color.fromARGB(111, 124, 162, 163),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: Offset(0, 3),
//           )
//         ],
//       ),
//       child: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(widget.icon, color: widget.iconColor),
//                   ],
//                 ),
//                 SizedBox(width: 20),
//                 Expanded(
//                   child: Center(
//                     child: Text.rich(
//                       TextSpan(
//                         text: widget.name,
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Color.fromARGB(255, 11, 11, 11),
//                         ),
//                         children: [
//                           WidgetSpan(
//                             child: Transform.translate(
//                               offset: const Offset(2, -10),
//                               child: Text(
//                                 widget.code,
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   color: Color.fromARGB(255, 43, 42, 42),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             top: 8,
//             right: 8,
//             child: IconButton(
//               icon: Icon(
//                 isFavorite ? Icons.favorite : Icons.favorite_border,
//                 color: isFavorite ? Colors.red : Colors.grey,
//               ),
//               onPressed: toggleFavorite,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_page.dart';

class FoodMenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount;
    if (screenWidth < 600) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 4;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        children: [
          FoodItem(
            icon: Icons.circle,
            iconColor: Colors.red,
            code: 'R-15',
            name: 'Chicken Kolhapuri',
          ),
          FoodItem(
            icon: Icons.circle,
            iconColor: Colors.red,
            code: 'R-16',
            name: 'Chicken Lollipop',
          ),
          FoodItem(
            icon: Icons.circle,
            iconColor: Colors.green,
            code: 'R-17',
            name: 'Paneer Noodles',
          ),
          // Add remaining FoodItem widgets
        ],
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String code;
  final String name;

  FoodItem({
    required this.icon,
    required this.iconColor,
    required this.code,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final favoriteProvider =
        Provider.of<FavoriteProvider>(context, listen: false);
    final foodItemData = FoodItemData(name, code, icon, iconColor);
    final isFavorite = favoriteProvider.isFavorite(foodItemData);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(111, 124, 162, 163),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(icon, color: iconColor),
                  ],
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        text: name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 11, 11, 11),
                        ),
                        children: [
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -10),
                              child: Text(
                                code,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 43, 42, 42),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                favoriteProvider.toggleFavorite(foodItemData);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteProvider with ChangeNotifier {
  final List<FoodItemData> _favoriteItems = [];

  List<FoodItemData> get favoriteItems => _favoriteItems;

  void toggleFavorite(FoodItemData item) {
    if (_favoriteItems.contains(item)) {
      _favoriteItems.remove(item);
    } else {
      _favoriteItems.add(item);
    }
    notifyListeners();
  }

  bool isFavorite(FoodItemData item) {
    return _favoriteItems.contains(item);
  }

  void removeFavorite(FoodItemData item) {
    _favoriteItems.remove(item);
    notifyListeners();
  }
}

class FoodItemData {
  final String name;
  final String code;
  final IconData icon;
  final Color iconColor;

  FoodItemData(this.name, this.code, this.icon, this.iconColor);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodItemData &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          code == other.code &&
          icon == other.icon &&
          iconColor == other.iconColor;

  @override
  int get hashCode =>
      name.hashCode ^ code.hashCode ^ icon.hashCode ^ iconColor.hashCode;
}
