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
        backgroundColor: Colors.transparent,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, elevation: 0, child: const Icon(Icons.add)),
        body: Container(
            color: Colors.transparent,
            width: Get.width,
            height: Get.height,
            child: PageView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Center(
                  child: Text(
                    "LOGO HERE",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                /*FutureBuilder(
                  future: DeviceApps.getInstalledApplications(
                      includeSystemApps: true),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      List<Application> allApps =
                          snapshot.data as List<Application>;
                      return GridView.count(
                        crossAxisCount: 3,
                        children: List.generate(allApps.length, (index) {
                          return Column(
                            children: [
                              Container(
                                child: Text(
                                  "$allApps[index].appName",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              )
                            ],
                          );
                        }),
                      );
                    }
                    return const CircularProgressIndicator(
                      color: Colors.white,
                    );
                  },
                )*/
              ],
            )));
  }
}
/**
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