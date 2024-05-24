// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields
import 'package:anfeca_kn/configuration_page.dart';
import 'package:anfeca_kn/media_page.dart';
import 'package:anfeca_kn/plant_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();

  int _page = 0;
  List<String> _titles = [
    'Contenido',
    'Cultivos',
    'Configuracion'
  ];
  
  List _screens = [
    MediaPage(),
    PlantPage(),
    ConfigurationPage()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(        
        index: _page,
        color: Color(0xFF40DA62),
        backgroundColor: Colors.transparent,
      
        items: const [
          Icon(Icons.play_circle, size: 30),
          Icon(Icons.eco, size: 30),
          Icon(Icons.settings, size: 30),
        ],

        onTap: (index) {
          setState(() {
            _page = index;
          });          //Handle button tap
        },
      ),

      body: _screens[_page],

      appBar: PreferredSize(

        
        preferredSize: Size.fromHeight(45),
        child: AppBar(

          title: !_isSearching
            ? Text(_titles[_page],
                style: TextStyle(
                fontSize: 20, 
                color: Colors.black,
                fontWeight: FontWeight.bold
                ),
              ) 
            : TextField(
                controller: _searchController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Buscar...',
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none,
                ),
              ),
        actions: [
          !_isSearching
              ? IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      _isSearching = true;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      _isSearching = false;
                      _searchController.clear();
                    });
                  },
                ),
        ],
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
          backgroundColor: Color(0xFF40DA62),
          /*
          title: Text(
            _titles[_page],
            style: TextStyle(
              fontSize: 20, 
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          )  
          */

        ),
      ),
    );
  }
}
