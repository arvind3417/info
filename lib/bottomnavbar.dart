import 'package:flutter/material.dart';
import 'package:skygoal/homescreen.dart';
// import 'package:skygoal/pae.dart';
import 'package:skygoal/pages.dart';


class DoctorUi extends StatelessWidget {
  const DoctorUi({Key? key}) : super(key: key);

  static const String _title = 'HealthCare';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white);
  static const List<Widget> pages = <Widget>[
    Homescreen(),
    mainpage2(),    mainpage3(),    mainpage4()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF3B3D58),
      //   centerTitle: true,
      //   title: const Text('HealthCare'),
      // ),
      // floatingActionButton: FloatingActionButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> A()));
      // },child:Icon(Icons.calendar_view_day)),
      body: SafeArea(child: bottomnavbar(pages: pages, selectedIndex: _selectedIndex)),
      
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
              // canvasColor: Color(0xFF3B3D58),
              canvasColor: Colors.transparent,
              // primaryColor: Colors.white,
              textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Colors.grey)
              )
            ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          showSelectedLabels: false,
          unselectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
              // backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Business',
              // backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'School',
              // backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              
              label: 'Settings',
              // backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class bottomnavbar extends StatelessWidget {
  const bottomnavbar({
    Key? key,
    required this.pages,
    required int selectedIndex,
  }) : _selectedIndex = selectedIndex, super(key: key);

  final List<Widget> pages;
  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        
        child: pages.elementAt(_selectedIndex),
      ),
    );
  }
}
