import 'package:flutter/material.dart';

class likepg extends StatefulWidget {
  @override
  State<likepg> createState() => _likepgState();
}

class _likepgState extends State<likepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7286FF),
      appBar: AppBar(
        title: Text("Favorites"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (() {}),
            child: Container(
              padding: EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              margin: EdgeInsets.all(10),
              height: 40,
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xFF90CAF9),
                  borderRadius: BorderRadius.circular(30)),
            ),
          );
        },
      ),
    );
  }
}
