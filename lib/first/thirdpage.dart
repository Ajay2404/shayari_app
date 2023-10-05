import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari_app/first/fourthpage.dart';

import 'likepage.dart';

class thirdpg extends StatefulWidget {
  @override
  State<thirdpg> createState() => _thirdpgState();

  List shyrilist;
  int indx;

  thirdpg(this.shyrilist, this.indx);
}

class _thirdpgState extends State<thirdpg> {
  PageController pg = PageController();
  List shayri = [];
  List<String> favoritelist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pg = PageController(initialPage: widget.indx);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7286FF),
      appBar: AppBar(title: Text(""), backgroundColor: Colors.black, actions: [
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return likepg();
              },
            ));
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.favorite),
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.share,
            ),
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.more_vert),
          ),
        ),
      ]),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFF90CAF9),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "${1 + widget.indx.toInt()}/" "${widget.shyrilist.length}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
              child: PageView.builder(
            controller: pg,
            onPageChanged: (value) {
              print("+$value");
              setState(() {
                widget.indx = value;
              });
            },
            itemCount: widget.shyrilist.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.shyrilist[widget.indx],
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
              );
            },
          )),
          Container(
            margin: EdgeInsets.all(10),
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFF90CAF9),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    FlutterClipboard.copy('${widget.shyrilist[widget.indx]}')
                        .then(
                      (value) {
                        Fluttertoast.showToast(
                          msg: "Copied",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.white,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.content_copy),
                ),
                Padding(padding: EdgeInsets.all(10)),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.indx > 0) {
                        widget.indx--;
                      }
                      pg.jumpToPage(widget.indx);
                    });
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Padding(padding: EdgeInsets.all(10)),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return fourthpg(widget.shyrilist, widget.indx);
                    }));
                  },
                  icon: Icon(Icons.design_services_outlined),
                ),
                Padding(padding: EdgeInsets.all(10)),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (widget.indx < widget.shyrilist.length - 1) {
                          widget.indx++;
                        }
                        pg.jumpToPage(widget.indx);
                      });
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                    )),
                Padding(padding: EdgeInsets.all(10)),
                IconButton(
                  onPressed: () {
                    Share.share('${widget.shyrilist}');
                  },
                  icon: Icon(Icons.share),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
