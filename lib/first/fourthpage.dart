import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class fourthpg extends StatefulWidget {
  fourthpg(this.shayri, this.indxx);

  List shayri;
  int indxx;

  @override
  State<fourthpg> createState() => _fourthpgState();
}

class _fourthpgState extends State<fourthpg> {
  Color clr = Color(0xFF90CAF9);
  List<Color> clrs = [
    Colors.deepOrangeAccent,
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.white,
    Colors.orangeAccent,
    Colors.red,
    Colors.brown,
    Colors.cyanAccent,
    Colors.pink,
    Colors.purple,
    Colors.yellow,
    Colors.deepPurpleAccent,
    Colors.teal,
    Colors.indigo,
    Colors.lightGreenAccent,
    Colors.tealAccent,
    Colors.lightBlue,
  ];
  Color txt = Colors.black;
  List<Color> txts = [
    Colors.deepOrangeAccent,
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.white,
    Colors.orangeAccent,
    Colors.red,
    Colors.brown,
    Colors.cyanAccent,
    Colors.pink,
    Colors.purple,
    Colors.yellow,
    Colors.deepPurpleAccent,
    Colors.teal,
    Colors.indigo,
    Colors.lightGreenAccent,
    Colors.tealAccent,
    Colors.lightBlue
  ];
  FontWeight fnt = FontWeight.normal;
  List<FontWeight> fnts = [
    FontWeight.normal,
    FontWeight.bold,
    FontWeight.w100,
    FontWeight.w200,
    FontWeight.w300,
    FontWeight.w400,
    FontWeight.w500,
    FontWeight.w600,
  ];
  String emj = '';
  List Emoji = [
    '😍💕🥰💘😘',
    '🥺💔😭💘😢',
    '💔💗❤️‍🔥💓💘',
    '🧑‍🤝‍🧑🍻💙🤗🧑‍🤝‍🧑',
    '😎💪😡🎃😈',
    '🌅💐☕🥀🌞',
    '😴🌃🌌🌛💤',
    '😢🤦😇🙄😔',
    '🤣😂🥴🤪😜',
    '🎀🎂🎁🎉🎊'
  ];
  WidgetsToImageController controller = WidgetsToImageController();
  double size = 5;

  String filepath = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    permission();
    createFolder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7286FF),
      appBar: AppBar(title: Text(""), backgroundColor: Colors.black, actions: [
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {},
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
      body: Column(children: [
        Expanded(
          flex: 3,
          child: WidgetsToImage(
            controller: controller,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: clr, borderRadius: BorderRadius.circular(30)),
              child: Text(
                '$emj'
                '${widget.shayri[widget.indxx]}'
                '$emj',
                style: TextStyle(
                  fontSize: 10 * size,
                  fontWeight: fnt,
                  color: txt,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFF90CAF9),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 200,
                                child: GridView.builder(
                                  itemCount: clrs.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 6),
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          Navigator.pop(context);
                                          clr = clrs[index];
                                        });
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        color: clrs[index],
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF7286FF),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black),
                          ),
                          alignment: Alignment.center,
                          child: Text('Background'),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 200,
                                child: GridView.builder(
                                  itemCount: clrs.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 6),
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        setState(() {
                                          txt = txts[index];
                                        });
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        color: txts[index],
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF7286FF),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black),
                          ),
                          alignment: Alignment.center,
                          child: Text('Text Color'),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () async {
                          controller.capture().then((imageBytes) async {
                            DateTime mm = DateTime.now();
                            String imagename =
                                "IMAGE${mm.day}${mm.month}${mm.year}${mm.hour}${mm.minute}";
                            File file = File('$filepath/$imagename.jpg');
                            List<int> bytes = imageBytes as List<int>;
                            file.writeAsBytes(bytes);
                            await file.create();
                            Share.shareFiles(['${file.path}']);
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF7286FF),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black),
                          ),
                          alignment: Alignment.center,
                          child: Text('Share'),
                        ),
                      )),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                color: Color(0xFF7286FF),
                                height: 200,
                                child: GridView.builder(
                                  itemCount: fnts.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4),
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        setState(() {
                                          fnt = fnts[index];
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text('${fnts[index]}'),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF90CAF9),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.black)),
                                        margin: EdgeInsets.all(5),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF7286FF),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black),
                          ),
                          alignment: Alignment.center,
                          child: Text('Font'),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 200,
                                child: GridView.builder(
                                  // itemCount: clrs.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 6),
                                  itemCount: Emoji.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        setState(() {
                                          emj = Emoji[index];
                                        });
                                      },
                                      child: Container(
                                        child: Text('${Emoji[index]}'),
                                        margin: EdgeInsets.all(5),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF7286FF),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black),
                          ),
                          alignment: Alignment.center,
                          child: Text('Emoji'),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(
                                builder: (context, one) {
                                  return Container(
                                    height: 200,
                                    margin: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        color: Color(0xFF7286FF),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Slider(
                                      value: size,
                                      min: 05,
                                      max: 15,
                                      mouseCursor:
                                          MaterialStateMouseCursor.clickable,
                                      activeColor: Color(0xFF90CAF9),
                                      divisions: 20,
                                      onChanged: (value) {
                                        setState(() {
                                          one(() {
                                            size = value;
                                          });
                                        });
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFF7286FF),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black),
                          ),
                          alignment: Alignment.center,
                          child: Text('Text Size'),
                        ),
                      )),
                    ],
                  )),
                ],
              )),
        ),
      ]),
    );
  }

  permission() async {
    var status = await Permission.storage.status;
    if (status.isDenied) {
    } else {
      await Permission.storage.request();
    }
  }

  createFolder() async {
    final folderName = "ShayriApp";
    final path = Directory("storage/emulated/0/Download/$folderName");
    if (await path.exists()) {
    } else {
      await path.create();
    }
    filepath = path.path;
  }
}
