import 'package:flutter/material.dart';
import 'package:skygoal/3.dart';
// import 'package:skygoal/pae.dart';
// import 'package:skygoal/edm.dart';
import 'bottomsheet.dart';

class body extends StatefulWidget {
  const body({Key? key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        children: [
          // refer(size: size),
          Container(
              // child: refer(size: size),
              height: 190,
              // color: Colors.red,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "data",
                          style: TextStyle(fontSize: 30, letterSpacing: 1.2),
                        ),
                        Icon(Icons.notifications_active)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "data",
                      style: TextStyle(fontSize: 25, letterSpacing: 1.2),
                    ),
                  ),
                  Stack(
                    children: [
                      Positioned(
                          // top: 100,
                          // left: 0,
                          // bottom: 10,
                          // right: 0,
                          child: Container(
                              margin: EdgeInsets.all(5),
                              // height: 54,
                              // width: size.width / 1.5,
                              decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 10),
                                        blurRadius: 50,
                                        color: Color.fromARGB(255, 51, 49, 49)
                                            .withOpacity(.4))
                                  ]),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          hintText: "Search",
                                          contentPadding: EdgeInsets.all(15),
                                          filled: true,
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.red)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.red))),
                                    ),
                                  ),
                                  sortbar()
                                ],
                              ))),
                    ],
                  ),
                ],
              )),
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                        shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(20.0),
  ),
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            margin: EdgeInsets.all(20),
                            height: size.height*3,
                            // color: Colors.amber,

                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sort By",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.close_sharp,
                                        size: 25,
                                      ),
                                    )
                                  ],
                                ),
                                Divider(
          color: Colors.black,
          height: 20,
          thickness: .5,
          indent: 10,
          endIndent: 10,
        ),
                                //  bottomlisttile(isFavorite: isFavorite, name: "")
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      
                                      gestdut(MaterialPageRoute(
                                          builder: (context) => topsb()),
                                          "Bachelor of Technology"
                                          ),
                                      gestdut(MaterialPageRoute(
                                          builder: (context) => topsb()),
                                          "Bachelor of Architecture"),
                                      gestdut(MaterialPageRoute(
                                          builder: (context) => topsb()),
                                          "Pharmacy"),
                                      gestdut(MaterialPageRoute(
                                          builder: (context) => topsb()),
                                          "Law"),
                                      gestdut(MaterialPageRoute(
                                          builder: (context) => topsb()),
                                          "Management"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        child: Image.network(
                          'https://placeimg.com/640/480/any',
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Column gestdut(Route route,String text) {
    // required this.route;
    // Route? route;

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(context, route);
              isFavorite = !isFavorite;
            });
          },
          child: new ListTile(
            // trailing: InkWell(
            //   child: Icon(Icons.share),
            // ),
            trailing: Icon(Icons.circle_rounded),
            // trailing: isFavorite
            //     ? Icon(Icons.circle_outlined, color: Colors.yellow)
            //     : Icon(Icons.circle_outlined),
            title: new Text(text,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
          ),
        ),
      ],
    );
  }
}

class sortbar extends StatelessWidget {
  const sortbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: RotatedBox(
        quarterTurns: 45,
        child: Icon(
          Icons.no_encryption,
          color: Colors.blue,
          size: 30,
        ),
      ),
    );
  }
}
