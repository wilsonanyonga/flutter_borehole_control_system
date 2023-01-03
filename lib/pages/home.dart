import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyHomePage extends StatelessWidget {
  String title;

  MyHomePage({super.key, required this.title});

  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(title),
      // ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Row(
          children: [
            NavigationRail(
              selectedIndex: 0,
              onDestinationSelected: (int index) {
                // setState(() {
                //   _selectedIndex = index;
                // });
              },
              // labelType: NavigationRailLabelType.all,
              extended: true,
              minExtendedWidth: 20,
              backgroundColor: Colors.white,
              // groupAlignment: 0,
              destinations: const <NavigationRailDestination>[
                // navigation destinations
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  selectedIcon: Icon(Icons.home_outlined),
                  label: Text(
                    'Home',
                    // style: TextStyle(fontSize: 15),
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.menu_rounded),
                  selectedIcon: Icon(Icons.person),
                  label: Text('Dashboard'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.water_drop_outlined),
                  selectedIcon: Icon(Icons.shopping_cart),
                  label: Text('Bore Holes'),
                ),
              ],
              selectedIconTheme: const IconThemeData(color: Colors.black),
              unselectedIconTheme: const IconThemeData(color: Colors.black),
              selectedLabelTextStyle: const TextStyle(color: Colors.black87),
              // leading: const CircleAvatar(
              //   radius: 40,
              //   foregroundImage: AssetImage('assets/icons/oto2.png'),
              // ),
              // leading: SizedBox(
              //   height: 100,
              //   width: 150,
              //   child: Image.asset('assets/icons/oto2.png'),
              // ),
              // leading: ClipRRect(
              //   child:  Image.asset('assets/icons/oto2.png'),
              // ),

              leading: Row(
                children: const [
                  // SizedBox(
                  //   width: 5,
                  // ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    foregroundImage: AssetImage('assets/icons/logo1.png'),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "OTOMATIK",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(
                  //   width: 5,
                  // ),
                ],
              ),
              trailing: Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 5, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.notifications),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Notifications"),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                            child: Text(
                              "20",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.settings),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Settings"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.logout_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text("LogOut"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.supervised_user_circle,
                            size: 40,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("James Bond"),
                              Text("jamesbond@gmail.com"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              useIndicator: true,
              indicatorColor: Colors.blue,
            ),
            const VerticalDivider(thickness: 1, width: 2),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'OTOMATIK Borehole Control System',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Zombe Borehole 11',
                            style: TextStyle(
                              // fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '11 / 10 / 2022',
                            style: TextStyle(
                              // fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '09:40 hrs',
                            style: TextStyle(
                              // fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 200,
                      height: 150,
                      color: Colors.grey[300],
                      child: Stack(
                        children: [
                          Positioned(
                            right: 10,
                            top: 5,
                            child: ToggleSwitch(
                              minWidth: 40.0,
                              cornerRadius: 10.0,
                              activeBgColors: [
                                [Colors.green[800]!],
                                [Colors.red[800]!]
                              ],
                              activeFgColor: Colors.white,
                              inactiveBgColor: Colors.grey,
                              inactiveFgColor: Colors.white,
                              initialLabelIndex: 1,
                              totalSwitches: 2,
                              labels: const ['On', 'Off'],
                              radiusStyle: true,
                              onToggle: (index) {
                                if (kDebugMode) {
                                  print('switched to: $index');
                                }
                              },
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 20,
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.asset('assets/icons/pump.png'),
                            ),
                          ),
                          const Positioned(
                            left: 10,
                            bottom: 20,
                            child: Text(
                              'Pump',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
