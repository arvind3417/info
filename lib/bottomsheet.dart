import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatelessWidget(),
//       ),
//     );
//   }
// }

class MyStatelessWidget extends StatefulWidget {
  MyStatelessWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

bool isFavorite = false;

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  // color: Colors.amber,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //  bottomlisttile(isFavorite: isFavorite, name: "")
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              
                            isFavorite = !isFavorite;
                            });
                          },
                          child: new ListTile(
                            // trailing: InkWell(
                            //   child: Icon(Icons.share),
                            // ),
                            trailing: isFavorite
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.yellow
                                  )
                                : Icon(Icons.favorite),
                            title: new Text('Your Text',
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14.0)),
                          ),
                        ),
                      ],
                    ),
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
  });
      }
    // ),(
    //   GestureDetector(
    //       onTap: () {
    //         showModalBottomSheet<void>(
    //           context: context,
    //           builder: (BuildContext context) {
    //             return Container(
    //               height: 200,
    //               // color: Colors.amber,
    //               child: Center(
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   mainAxisSize: MainAxisSize.min,
    //                   children: <Widget>[
    //                     //  bottomlisttile(isFavorite: isFavorite, name: "")
    //                     GestureDetector(
    //                       onTap: () {
    //                         setState(() {
                              
    //                         isFavorite = !isFavorite;
    //                         });
    //                       },
    //                       child: new ListTile(
    //                         // trailing: InkWell(
    //                         //   child: Icon(Icons.share),
    //                         // ),
    //                         trailing: isFavorite
    //                             ? Icon(
    //                                 Icons.favorite,
    //                                 color: Colors.yellow
    //                               )
    //                             : Icon(Icons.favorite),
    //                         title: new Text('Your Text',
    //                             style: new TextStyle(
    //                                 fontWeight: FontWeight.bold, fontSize: 14.0)),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             );
    //           },
    //         );
    //       },
    //       child: Container(
    //         height: MediaQuery.of(context).size.height / 4,
    //         width: MediaQuery.of(context).size.width,
    //         child: Card(
    //           child: Image.network(
    //             'https://placeimg.com/640/480/any',
    //             // fit: BoxFit.fill,
    //           ),
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(10.0),
    //           ),
    //           elevation: 5,
    //           // margin: EdgeInsets.all(10),
    //         ),
    //       ),
    //     ),
    // );
    
    // return Center(
    //   child: ElevatedButton(
    //     child: const Text('showModalBottomSheet'),
    //     onPressed: () {
    //       showModalBottomSheet<void>(
    //         context: context,
    //         builder: (BuildContext context) {
    //           return Container(
    //             height: 200,
    //             color: Colors.amber,
    //             child: Center(
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 mainAxisSize: MainAxisSize.min,
    //                 children: <Widget>[
    //                   const Text('Modal BottomSheet'),
    //                   ElevatedButton(
    //                     child: const Text('Close BottomSheet'),
    //                     onPressed: () => Navigator.pop(context),
    //                   )
    //                 ],
    //               ),
    //             ),
    //           );
    //         },
    //       );
    //     },
    //   ),
    // );
  }

