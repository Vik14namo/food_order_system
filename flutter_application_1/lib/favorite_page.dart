// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'cardfood.dart'; // Adjust this import based on your file structure

// class FavoritePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final favoriteItems = Provider.of<FavoriteProvider>(context).favoriteItems;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favorite Items'),
//       ),
//       body: ListView.builder(
//         itemCount: favoriteItems.length,
//         itemBuilder: (context, index) {
//           final item = favoriteItems[index];
//           return ListTile(
//             leading: Icon(item.icon, color: item.iconColor),
//             title: Text.rich(
//               TextSpan(
//                 text: item.name,
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 11, 11, 11),
//                 ),
//                 children: [
//                   WidgetSpan(
//                     child: Transform.translate(
//                       offset: const Offset(2, -10),
//                       child: Text(
//                         item.code,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Color.fromARGB(255, 43, 42, 42),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cardfood.dart'; // Import your provider file

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the provider
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final favoriteItems = favoriteProvider.favoriteItems;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(185, 174, 216, 210),
        title: Text('Favorite Items'),
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final item = favoriteItems[index];
          return ListTile(
            leading: Icon(item.icon, color: item.iconColor),
            title: Text.rich(
              TextSpan(
                text: item.name,
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
                        item.code,
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
            trailing: IconButton(
              icon: Icon(Icons.remove_circle, color: Colors.red),
              onPressed: () {
                // Remove item from favorites
                favoriteProvider.removeFavorite(item);
              },
            ),
          );
        },
      ),
    );
  }
}
