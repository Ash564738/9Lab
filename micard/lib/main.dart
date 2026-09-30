import 'package:flutter/material.dart';

void main() {
  runApp(MiCardApp());
}

class MiCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF9AD9E8),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              Text(
                'Đặng Kiều Trang',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Mobile Developer',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Color(0xFFE5F8FC),
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Color(0xFFE5F8FC),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Color(0xFF4BA7C2),
                  ),
                  title: Text(
                    '0366382472',
                    style: TextStyle(
                      color: Color(0xFF216477),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Color(0xFF4BA7C2),
                  ),
                  title: Text(
                    'trangdk.23it@vku.udn.vn',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF216477),
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}