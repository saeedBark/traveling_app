import 'package:flutter/material.dart';
import 'package:traveling_app/widgets/app_data.dart';

class TripDetail extends StatelessWidget {
  static const TripDetaile = '/TripDetail';

  Widget buildselectTitle(BuildContext context, String titleText) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Text('$titleText', style: Theme.of(context).textTheme.headline5),
    );
  }

  Widget bulidListContainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 15),
        height: 200,
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context).settings.arguments as String;
    final selectTrip = Trips_data.firstWhere((trip) => trip.id == tripId);
    return Scaffold(
        appBar: AppBar(
          title: Text('${selectTrip.title}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectTrip.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildselectTitle(context, 'الأنشطة'),
              bulidListContainer(
                ListView.builder(
                  itemCount: selectTrip.activities.length,
                  itemBuilder: (context, index) => Card(
                    elevation: 0.3,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(selectTrip.activities[index]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildselectTitle(context, 'البرنامج اليومي'),
              bulidListContainer(
                ListView.builder(
                  itemCount: selectTrip.program.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('يوم ${index + 1}'),
                        ),
                        title: Text(selectTrip.program[index]),
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ));
  }
}
