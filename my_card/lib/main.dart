import 'package:flutter/material.dart';

void main() {
  runApp(
    MyCard(),
  );
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.orange,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/salva-vidas.png'),
                  radius: 50,
                ),
                Text(
                  "Zé Silva",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: "Pacifico",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Desenvolvedor Flutter",
                  style: TextStyle(
                    color: Colors.orange.shade100,
                    fontSize: 20,
                    fontFamily: "Source Sans Pro",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 15,
                  width: 250,
                  child: Divider(
                    color: Colors.orange.shade100,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 50),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 25,
                      color: Colors.orange,
                    ),
                    title: Text(
                      "+55 (47) 99832-2344",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 50),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.orange,
                    ),
                    title: Text(
                      "zesilva@gmail.com",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                        fontFamily: "Source Sans Pro",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
