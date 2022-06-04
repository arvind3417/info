import 'package:flutter/material.dart';
import 'package:skygoal/2.dart';
import 'package:skygoal/tabbabab.dart';

class topsb extends StatelessWidget {
  const topsb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: [
              Container(
                height: size.height * .2,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * .2,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                    Positioned(
                        left: 10,
                        bottom: 30,
                        right: 10,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          // height: 54,
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "Search")),
                              ),
                              sortbar()
                            ],
                          ),
                        )),
                    Positioned(
                        left: 10,
                        top: 0,
                        right: 10,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          // height: 54,
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              // Expanded(
                              //   child: TextField(
                              //       decoration: InputDecoration(
                              //           filled: true,
                              //           fillColor: Colors.white,
                              //           hintText: "Search")),
                              // ),
                              // sortbar()
                              InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, top: 20),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: RotatedBox(
                                    quarterTurns: 0,
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              onescrollable(),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                      onTap: () {
                        // abdb();
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => Product())));
                      },
                      child: card());
                },
              )
              // ),Container(
              //           height: MediaQuery.of(context).size.height / 4,
              //           width: MediaQuery.of(context).size.width,
              //           child: Card(
              //             child: Image.network(
              //               'https://placeimg.com/640/480/any',
              //               fit: BoxFit.cover,
              //             ),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10.0),
              //             ),
              //             elevation: 5,
              //             margin: EdgeInsets.all(10),
              //           ),
              //         ),Container(
              //           height: MediaQuery.of(context).size.height / 4,
              //           width: MediaQuery.of(context).size.width,
              //           child: Card(
              //             child: Image.network(
              //               'https://placeimg.com/640/480/any',
              //               fit: BoxFit.cover,
              //             ),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10.0),
              //             ),
              //             elevation: 5,
              //             margin: EdgeInsets.all(10),
              //           ),
              //         ),Container(
              //           height: MediaQuery.of(context).size.height / 4,
              //           width: MediaQuery.of(context).size.width,
              //           child: Card(
              //             child: Image.network(
              //               'https://placeimg.com/640/480/any',
              //               fit: BoxFit.cover,
              //             ),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10.0),
              //             ),
              //             elevation: 5,
              //             margin: EdgeInsets.all(10),
              //           ),
              //         ),Container(
              //           height: MediaQuery.of(context).size.height / 4,
              //           width: MediaQuery.of(context).size.width,
              //           child: Card(
              //             child: Image.network(
              //               'https://placeimg.com/640/480/any',
              //               fit: BoxFit.cover,
              //             ),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10.0),
              //             ),
              //             elevation: 5,
              //             margin: EdgeInsets.all(10),
              //           ),
              //         ),
              //  Expanded(
              //    child: ListView.builder(
              //         // shrinkWrap: true,
              //         scrollDirection: Axis.horizontal,
              //         itemCount: 6,
              //         itemBuilder: (BuildContext context, int index) {
              //           return OutlinedButton(
              //             child: Text('Woolha.com'),
              //             style: OutlinedButton.styleFrom(
              //               primary: Colors.teal,
              //             ),
              //             onPressed: () {
              //               print('Pressed');
              //             },
              //           );
              //           //                   return Container(
              //           //                     // height: 10,
              //           //                     // width: size.width,
              //           //                      margin: const EdgeInsets.all(15.0),
              //           // padding: const EdgeInsets.all(3.0),
              //           //                     // margin: EdgeInsets.only(right: 10),
              //           //                   decoration: BoxDecoration(
              //           //                     border:  Border.all()
              //           //                   ),
              //           //                   child: Text("engg"),
              //           //                   );
              //           // OutlinedButton(onPressed: (){}, child: Text("hi"));
              //           // sortbar();
              //           //  Container(height:300,decoration: BoxDecoration(color: Colors.amber,),);
              //           // Container(child: TextButton(onPressed: (){}, child: Text("MVSH Engineering College")));
              //         },
              //       ),
              //  ),
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  const card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
      ],
    );
  }
}

class onescrollable extends StatelessWidget {
  const onescrollable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            ),
            catg_widget(text: "Birani"),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}

class catg_widget extends StatelessWidget {
  const catg_widget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}


class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://images.unsplash.com/photo-1525921429624-479b6a26d84d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y29sbGVnZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nouveautés',style: TextStyle(fontSize: 30,color: Colors.white,letterSpacing: .3,fontWeight: FontWeight.bold),),
                    Text("I'm going to hire professional help tomorrow. I can't handle this anymore. She fell over the coffee table and now there is blood in her catheter. This is much more than I ever signed up to do.",style: TextStyle(fontSize: 15,color: Colors.white,letterSpacing: 0),)
                ,Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("data"),
                    SizedBox(width: 250,),
                    Expanded(
                      child: Container(
                        height: 20,
                        
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Text("186+",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    )
                  ],
                )
                  ],
                ),
              ),
            ),
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          ),
        ],
      ),
    );
  }
}