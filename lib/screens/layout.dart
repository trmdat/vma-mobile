import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vma/screens/alert.dart';
import 'package:vma/screens/camera.dart';
import 'package:vma/screens/foo_screen.dart';
import 'package:vma/screens/home.dart';
import 'package:vma/screens/treatment_plan.dart';
import 'package:vma/screens/vaccination.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

List<IconData> _icons = [
  CupertinoIcons.chart_bar_fill,
  Icons.medical_services,
  CupertinoIcons.calendar,
  CupertinoIcons.video_camera_solid,
  CupertinoIcons.bell,
];

List<String> _titles = [
  'Tổng quan',
  'Tiêm phòng',
  'Điều trị',
  'Camera',
  "Cảnh báo",
];

int _isSelectedIndex = 0;

class _LayoutPageState extends State<LayoutPage> {
  static const List<Widget> _widgetOptions = <Widget>[
    MyHomePage(title: "Hello, World!"),
    Vaccination(),
    TreatmentPlan(),
    Camera(),
    Alert(),
  ];

  @override
  Widget build(BuildContext context) {
    String currentRoute = ModalRoute.of(context)!.settings.name!;
    print(currentRoute);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("VMA"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FooScreen()),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Stack(
        children: [
          _widgetOptions.elementAt(_isSelectedIndex),
          Align(
            alignment: Alignment.bottomCenter,
            child: _navBar(),
          ),
        ],
      ),
      // bottomNavigationBar: Container(
      //   margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      //   padding:
      //       const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   child: BottomNavigationBar(
      //     backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      //     elevation: 0,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.chart_bar_fill),
      //         label: 'Tổng quan',
      //         backgroundColor: Colors.transparent,
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.medical_services),
      //         label: 'Tiêm phòng',
      //         // backgroundColor: Colors.white,
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.calendar),
      //         label: 'Điều trị',
      //         // backgroundColor: Colors.white,
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.video_camera_solid),
      //         label: 'Camera',
      //         // backgroundColor: Colors.white,
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.bell),
      //         label: 'Cảnh báo',
      //         // backgroundColor: Colors.white,
      //       ),
      //     ],
      //     currentIndex: _isSelectedIndex,
      //     type: BottomNavigationBarType.shifting,
      //     selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
      //     onTap: (index) {
      //       setState(() {
      //         _isSelectedIndex = index;
      //       });
      //     },
      //     unselectedItemColor: Colors.grey[400],
      //   ),
      // ),
    );
  }

  Widget _navBar() {
    return Container(
        height: 60,
        margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
        padding: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          verticalDirection: VerticalDirection.down,
          textDirection: TextDirection.ltr,
          children: _icons.map(
            (icon) {
              int index = _icons.indexOf(icon);
              bool isSelected = _icons.indexOf(icon) == _isSelectedIndex;
              return Material(
                color: Colors.transparent,
                child: GestureDetector(
                  onTap: () => setState(() {
                    _isSelectedIndex = index;
                  }),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                              top: 5, bottom: 0, left: 20, right: 20),
                          child: Icon(icon,
                              color: isSelected
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey[600]),
                        ),
                        isSelected
                            ? Text(
                                _titles[index],
                                style: TextStyle(
                                  color: isSelected
                                      ? Theme.of(context).colorScheme.primary
                                      : Colors.grey[600],
                                  fontSize: 12,
                                  height: 2,
                                ),
                              )
                            : const SizedBox(
                                height: 10,
                              ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ));
  }
}