import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'latest_data.dart';

class PopupAlert extends StatelessWidget {
  final LatestData latestData;
  const PopupAlert({Key? key, required this.latestData}) : super(key: key);
  // static final _initialCameraPosition = CameraPosition(
  //   target: LatLng(latestData.latitude, latestData.longitude),
  //   zoom: 11.5,
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Ping!'),
        // leading: IconButton(
        //   icon: Icon(Icons.close),
        //   //onpressed go to MainApp()
        //   onPressed: () => Navigator.of(context).push(
        //     MaterialPageRoute(
        //       builder: (context) => MainApp(),
        //     ),
        //   ),

        // )
        
      ),
      body: Column(
        
        children: [
          SizedBox(
          //make height 60% of screen
            height: MediaQuery.of(context).size.height * 0.6,
          //make width maximum screen size
            width: MediaQuery.of(context).size.width,
            child: 
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(latestData.latitude, latestData.longitude),
                zoom: 11.5,
              ),
              markers: {
                Marker(
                  markerId: MarkerId('marker_1'),
                  position: LatLng(latestData.latitude, latestData.longitude),
                ),
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Latitude: ${latestData.latitude}'),
        
            
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Longitude: ${latestData.longitude}'),
        
            
          
          )
          
          
        ],
      ),
    );
  }
}
