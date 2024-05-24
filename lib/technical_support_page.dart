// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TechnicalSupportPage extends StatelessWidget {
  const TechnicalSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.chevron_left),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Color(0xFF40DA62),
            title: Text(
              "Soporte Técnico",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
        ),
      ),
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Formulario de Contacto
              Text(
                'Formulario de Contacto',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Correo Electrónico',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Asunto',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Mensaje',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  backgroundColor: Color(0xFF40DA62),
                  alignment: Alignment.center
                ),
                onPressed: () {
                },
                child: Text(
                  'Enviar',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                
              ),
              SizedBox(height: 32.0),

              // FAQ
              Text(
                'Preguntas Frecuentes',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              ExpansionTile(
                title: Text('¿Cómo puedo resetear mi contraseña?'),
                children: <Widget>[
                  ListTile(
                    title: Text('Para resetear tu contraseña, ve a la página de configuración y sigue los pasos indicados.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('¿Cómo contacto al soporte técnico?'),
                children: <Widget>[
                  ListTile(
                    title: Text('Puedes contactarnos a través del formulario en esta página o llamándonos al número proporcionado más abajo.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('¿Dónde puedo encontrar más información sobre mi cuenta?'),
                children: <Widget>[
                  ListTile(
                    title: Text('Toda la información sobre tu cuenta está disponible en la sección de perfil de la aplicación.'),
                  ),
                ],
              ),
              SizedBox(height: 32.0),

              // Contacto Adicional
              Text(
                'Contacto Adicional',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Llámanos:'),
                subtitle: Text('922 255 0039'),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Envíanos un correo:'),
                subtitle: Text('soporteKN@gmail.com'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
