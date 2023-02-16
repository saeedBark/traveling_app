import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('دليل سياحي'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.dashboard),
              text: 'التصنيفات',
            ),
            Tab(
              icon: Icon(Icons.dashboard),
              text: 'المفضلة',
            ),
          ]),
        ),
      //  body: ,//      المقطع رقم 15 الدقيقة 5
      ),
    );
  }
}
