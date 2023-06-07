import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? longitude;
  double? latitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getLocationWeather();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LocationScreen(
                  locationWeather: weatherData,
                )));
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
    // return Scaffold(
    //   body: Container(
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //           image: AssetImage('images/bg.jpg'),
    //           fit: BoxFit.cover,
    //           colorFilter: ColorFilter.mode(
    //               Colors.white.withOpacity(0.3), BlendMode.dstATop)),
    //     ),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Center(
    //           child: ElevatedButton(
    //             onPressed: () {},
    //             child: const Padding(
    //               padding: EdgeInsets.all(10.0),
    //               child: Text(
    //                 'Get Location',
    //                 style: kButtonTextStyle,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}


      // var decodedData = jsonDecode(data);
      // var cityName = decodedData['name'];
      // var weather = decodedData['weather'][0]['main'];
      // var temperature = decodedData['main']['temp'];
      // var clouds = decodedData['clouds']['all'];
