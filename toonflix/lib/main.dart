import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'HI, Ryu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'welcome back',
                        style: TextStyle(
                          color: Colors.white.withAlpha(150),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 120),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white.withAlpha(150),
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '\$5 194 482',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Text('Transfer'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
