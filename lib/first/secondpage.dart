import 'package:flutter/material.dart';
import 'package:shayari_app/first/model.dart';
import 'package:shayari_app/first/thirdpage.dart';

import 'likepage.dart';

class secondpg extends StatefulWidget {
  List category;
  int ind;

  secondpg(this.category, this.ind);

  @override
  State<secondpg> createState() => _secondpgState();
}

class _secondpgState extends State<secondpg> {
  List shyrilist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.ind == 0) {
      shyrilist = model.Romantic;
    } else if (widget.ind == 1) {
      shyrilist = model.Sad;
    } else if (widget.ind == 2) {
      shyrilist = model.Breakup;
    } else if (widget.ind == 3) {
      shyrilist = model.Friendship;
    } else if (widget.ind == 4) {
      shyrilist = model.Attitude;
    } else if (widget.ind == 5) {
      shyrilist = model.GoodMorning;
    } else if (widget.ind == 6) {
      shyrilist = model.GoodNight;
    } else if (widget.ind == 7) {
      shyrilist = model.Sorry;
    } else if (widget.ind == 8) {
      shyrilist = model.Funny;
    } else if (widget.ind == 9) {
      shyrilist = model.Birthday;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7286FF),
      appBar: AppBar(
          title: Text("${widget.category[widget.ind]}"),
          backgroundColor: Colors.black,
          actions: [
          ]),
      body: ListView.builder(
        itemCount: shyrilist.length,
        itemBuilder: (context, index) {
          return Container(
              height: 100,
              margin: EdgeInsets.all(5),
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return thirdpg(shyrilist, index);
                    },
                  ));
                },
                trailing: Container(
                  child: Icon(Icons.arrow_forward_ios),
                ),
                title: Container(alignment: Alignment.center,
                  child: Text(
                    shyrilist[index],
                    maxLines: 2,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                tileColor: Color(0xFF90CAF9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ));
        },
      ),
    );
  }
}
