import 'package:flutter/material.dart';
import 'package:shayari_app/first/secondpage.dart';


class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  List category = [
    "Romantic Shayari",
    "Sad Shayari",
    "Breakup Shayari",
    "Friendship Shayari",
    "Attitude Shayari",
    "Good Morning Shayari",
    "Good Night Shayari",
    "Sorry Shayari",
    "Funny Shayari",
    "Birthday Shayari",
  ];
  List img = [
    "p1.jpg",
    "p2.jpg",
    "p3.jpg",
    "p4.jpg",
    "p5.jpg",
    "p6.jpg",
    "p7.jpg",
    "p8.jpg",
    "p9.jpeg",
    "p10.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF7286FF),
        appBar: AppBar(
            title: Text('Hindi Shayari'),
            backgroundColor: Colors.black,
            leading: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.dehaze_rounded),
              ),
            ),
            actions: []),
        body: ListView.builder(
          itemCount: category.length,
          //itemCount: category.length+1,(for error image)
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return secondpg(category, index);
                    },
                  ));
                },
                leading: Container(
                  margin: EdgeInsets.all(03),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("img/${img[index]}"),
                          fit: BoxFit.cover)),
                ),
                title: Text(
                  category[index],
                ),
                tileColor: Color(0xFF90CAF9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            );
          },
        ));
  }
}
