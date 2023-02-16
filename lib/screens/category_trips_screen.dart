import 'package:flutter/material.dart';
import 'package:traveling_app/models/trip.dart';
import 'package:traveling_app/models/trip.dart';
import 'package:traveling_app/widgets/trip_item.dart';
import '../widgets/app_data.dart';

class CategoryTripsScreen extends StatelessWidget {
  static const screenRoute = 'category-trips';
  // final String categoryid;
  // final String categoryTitle;
  // final String categoryImage;

  // const CategoryTripsScreen(
  //     {Key key, this.categoryid, this.categoryTitle, this.categoryImage})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryid = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    //
    final filterTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TripItem(
            id: filterTrips[index].id,
              title: filterTrips[index].title,
              imagURL: filterTrips[index].imageUrl,
              duration: filterTrips[index].duration,
              tripType: filterTrips[index].tripType,
              season: filterTrips[index].season);
        },
        itemCount: filterTrips.length,
      ),
    );
  }
}
