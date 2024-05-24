// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anfeca_kn/calendar_page.dart';
import 'package:anfeca_kn/notification_page.dart';
import 'package:anfeca_kn/perfil_page.dart';
import 'package:anfeca_kn/technical_support_page.dart';
import 'package:flutter/material.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFD0FBDA),
              Color(0xFFD0E5F4),
            ],
          ),
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => PerfilPage()));
              },            
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40),
                backgroundColor: Color(0xFF40DA62),
              ),
              child: Row(children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Text(
                  'Perfil',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )
              ]),
            ),
            
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationPage()));
              },   
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40),
                backgroundColor: Color(0xFF40DA62),
              ),
              child: Row(children: [
                Icon(
                  Icons.notification_important,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Text(
                  'Notificaciones',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )
              ]),
            ),
            SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                 Navigator.push(context,
                MaterialPageRoute(builder: (context) => TechnicalSupportPage()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40),
                backgroundColor: Color(0xFF40DA62),
              ),
              child: Row(children: [
                Icon(
                  Icons.support_agent,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Text(
                  'Soporte Técnico',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )
              ]),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => CalendarPage()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40),
                backgroundColor: Color(0xFF40DA62),
              ),
              child: Row(children: [
                Icon(
                  Icons.event,
                  color: Colors.black,
                ),
                SizedBox(width: 20),
                Text(
                  'Calendario',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )
              ]),
            ),
          ],
        ),
      ),

        )
        

    )


    );
  }
}
