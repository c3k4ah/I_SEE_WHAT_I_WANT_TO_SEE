// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:device_apps/device_apps.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, elevation: 0, child: const Icon(Icons.add)),
      appBar: AppBar(),
    );
  }
}
/**s
 * FutureBuilder(
                    future: DeviceApps.getInstalledApplications(
                        includeSystemApps: true),
                    builder: (BuildContext context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        List<Application> allApps = snapshot.data;
                        return GridView.count(
                            crossAxisCount: 3,
                            children: List.generate(allApps.length, (index) {
                              return Column(
                                children: [
                                  Text(
                                    "$allApps[index].appName",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              );
                            }));
                      }
                    })
 */