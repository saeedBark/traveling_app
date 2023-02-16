import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import '../widgets/app_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('دليل سياحي'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: Categories_data.map(
            (categoryData) => CategoryItem(
                categoryData.id, categoryData.title, categoryData.imageUrl),
          ).toList(),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// import '../widgets/app_data.dart';
// import '../widgets/category_item.dart';

// class CategoriesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView(
//       padding: EdgeInsets.all(10),
//       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: 200,
//         childAspectRatio: 7 / 8,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//       ),
//       children: Categories_data.map(
//         (categoryData) => CategoryItem(
//           categoryData.title,
//           categoryData.imageUrl,
//         ),
//       ).toList(),
//     );
//   }
// }
