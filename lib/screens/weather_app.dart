import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/models/weather_locations.dart';
import 'package:weather_app/widgets/single_weather.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            print('Tap');
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: (() {
                print('Tap');
              }),
              child: SvgPicture.asset(
                'assets/menu.svg',
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/night.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black38,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 140,
                left: 15,
              ),
              child: Row(
                children: [
                  Container(
                    width: 12,
                    height: 5,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: locationList.length,
              itemBuilder: (context, i) =>
                  SingleWeather(key: UniqueKey(), index: i),
            ),
          ],
        ),
      ),
    );
  }
}
