import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyHomePage extends StatelessWidget {
  String title;

  MyHomePage({super.key, required this.title});

  final int _counter = 0;

  // TooltipBehavior? _tooltipBehavior;

  final _tooltipBehavior = TooltipBehavior(
    enable: true,
    canShowMarker: false,
    header: '',
    // format: 'point.y marks in point.x',
    format: 'water level is at point.y m',
  );

  final _tooltipBehaviorPH = TooltipBehavior(
    enable: true,
    canShowMarker: false,
    header: '',
    // format: 'point.y marks in point.x',
    format: 'water pH level is at point.y',
  );

  // List<ChartSampleData>? chartData;

  List<ChartFlowData> chartData = <ChartFlowData>[
    ChartFlowData(
      x: '00:00 hrs',
      y: 43,
    ),
    ChartFlowData(
      x: '02:00 hrs',
      y: 45,
    ),
    ChartFlowData(
      x: '04:00 hrs',
      y: 50,
    ),
    ChartFlowData(
      x: '06:00 hrs',
      y: 55,
    ),
    ChartFlowData(
      x: '08:00 hrs',
      y: 63,
    ),
    ChartFlowData(
      x: '10:00 hrs',
      y: 68,
    ),
    ChartFlowData(
      x: '12:00 hrs',
      y: 72,
    ),
    ChartFlowData(
      x: '14:00 hrs',
      y: 70,
    ),
    ChartFlowData(
      x: '16:00 hrs',
      y: 66,
    ),
    ChartFlowData(
      x: '18:00 hrs',
      y: 57,
    ),
    ChartFlowData(
      x: '20:00 hrs',
      y: 50,
    ),
    ChartFlowData(
      x: '22:00 hrs',
      y: 45,
    ),
    // ChartFlowData(
    //   x: ':00 hrs',
    //   y: 45,
    // )
  ];

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
                              "2",
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
              child: Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 230,
                              height: 140,
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
                                      child:
                                          Image.asset('assets/icons/pump.png'),
                                    ),
                                  ),
                                  const Positioned(
                                    left: 20,
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
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 230,
                              height: 140,
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
                                      child:
                                          Image.asset('assets/icons/elec.png'),
                                    ),
                                  ),
                                  const Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Text(
                                      'Electricity',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 230,
                              height: 140,
                              color: Colors.grey[300],
                              child: Stack(
                                children: [
                                  const Positioned(
                                    right: 30,
                                    top: 20,
                                    child: Text(
                                      '5,000 L',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 20,
                                    left: 20,
                                    child: SizedBox(
                                      width: 60,
                                      height: 60,
                                      child:
                                          Image.asset('assets/icons/water.png'),
                                    ),
                                  ),
                                  const Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: Text(
                                      'Total Water Pumped',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SfCartesianChart(
                            plotAreaBorderWidth: 0,
                            title: ChartTitle(text: 'Borehole Water Level'),
                            legend: Legend(isVisible: true),
                            primaryXAxis: CategoryAxis(
                                majorGridLines: const MajorGridLines(width: 0)),
                            primaryYAxis: NumericAxis(
                                // labelRotation: 180,
                                isInversed: false,
                                minimum: 0,
                                maximum: 400,
                                labelFormat: '{value} m',
                                axisLine: const AxisLine(width: 0),
                                majorGridLines: const MajorGridLines(width: 0),
                                majorTickLines: const MajorTickLines(size: 0)),
                            series: _getTracker(),
                            tooltipBehavior: _tooltipBehavior,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          SfCartesianChart(
                            plotAreaBorderWidth: 0,
                            title: ChartTitle(text: ' Water pH Level'),
                            legend: Legend(isVisible: true),
                            primaryXAxis: CategoryAxis(
                                majorGridLines: const MajorGridLines(width: 0)),
                            primaryYAxis: NumericAxis(
                                // labelRotation: 180,
                                isInversed: false,
                                minimum: 0,
                                maximum: 14,
                                axisLine: const AxisLine(width: 0),
                                majorGridLines: const MajorGridLines(width: 0),
                                majorTickLines: const MajorTickLines(size: 0)),
                            series: _getPH(),
                            tooltipBehavior: _tooltipBehaviorPH,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SfCartesianChart(
                                plotAreaBorderWidth: 0,
                                title: ChartTitle(text: 'Water Pump Flow Rate'),
                                legend: Legend(isVisible: true),
                                primaryXAxis: CategoryAxis(
                                    majorGridLines:
                                        const MajorGridLines(width: 0),
                                    labelPlacement: LabelPlacement.onTicks),
                                primaryYAxis: NumericAxis(
                                    minimum: 0,
                                    maximum: 80,
                                    axisLine: const AxisLine(width: 0),
                                    edgeLabelPlacement:
                                        EdgeLabelPlacement.shift,
                                    labelFormat: '{value} m3/s',
                                    majorTickLines:
                                        const MajorTickLines(size: 0)),
                                series: _getDefaultSplineSeries(),
                                tooltipBehavior: TooltipBehavior(enable: true),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
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

  /// Get column series with tracker
  List<ColumnSeries<ChartSampleData, String>> _getTracker() {
    return <ColumnSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
          dataSource: <ChartSampleData>[
            ChartSampleData(x: 'Borehole Depth', y: 200),
            // ChartSampleData(x: 'Subject 2', y: 84),
            // ChartSampleData(x: 'Subject 3', y: 48),
            // ChartSampleData(x: 'Subject 4', y: 80),
            // ChartSampleData(x: 'Subject 5', y: 76),
          ],

          /// We can enable the track for column here.
          isTrackVisible: true,
          trackColor: const Color.fromRGBO(198, 201, 207, 1),
          borderRadius: BorderRadius.circular(15),
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.y,
          name: 'Water Level (m)',
          dataLabelSettings: const DataLabelSettings(
              isVisible: true,
              labelAlignment: ChartDataLabelAlignment.top,
              textStyle: TextStyle(fontSize: 15, color: Colors.white)))
    ];
  }

  /// Get column series with tracker
  List<ColumnSeries<ChartSampleData, String>> _getPH() {
    return <ColumnSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
          dataSource: <ChartSampleData>[
            ChartSampleData(x: 'pH Level', y: 8),
            // ChartSampleData(x: 'Subject 2', y: 84),
            // ChartSampleData(x: 'Subject 3', y: 48),
            // ChartSampleData(x: 'Subject 4', y: 80),
            // ChartSampleData(x: 'Subject 5', y: 76),
          ],

          /// We can enable the track for column here.
          isTrackVisible: true,
          trackColor: const Color.fromRGBO(198, 201, 207, 1),
          borderRadius: BorderRadius.circular(15),
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.y,
          name: 'Water pH Level',
          dataLabelSettings: const DataLabelSettings(
              isVisible: true,
              labelAlignment: ChartDataLabelAlignment.top,
              textStyle: TextStyle(fontSize: 15, color: Colors.white)))
    ];
  }

  /// Returns the list of chart series which need to render on the spline chart.
  List<SplineSeries<ChartFlowData, String>> _getDefaultSplineSeries() {
    return <SplineSeries<ChartFlowData, String>>[
      SplineSeries<ChartFlowData, String>(
        dataSource: chartData,
        xValueMapper: (ChartFlowData sales, _) => sales.x,
        yValueMapper: (ChartFlowData sales, _) => sales.y,
        markerSettings: const MarkerSettings(isVisible: true),
        name: 'Flow Rate (m3/s)',
      ),
      // SplineSeries<ChartSampleData, String>(
      //   dataSource: chartData!,
      //   name: 'Low',
      //   markerSettings: const MarkerSettings(isVisible: true),
      //   xValueMapper: (ChartSampleData sales, _) => sales.x as String,
      //   yValueMapper: (ChartSampleData sales, _) => sales.secondSeriesYValue,
      // )
    ];
  }
}

class ChartSampleData {
  final String x;
  final int y;
  ChartSampleData({
    required this.x,
    required this.y,
  });
}

class ChartFlowData {
  final String x;
  final int y;
  ChartFlowData({
    required this.x,
    required this.y,
  });
}
