import 'package:flutter/material.dart';
import 'package:skygoal/3.dart';

class scrl extends StatelessWidget {
  const scrl({Key? key,
   required TabController tabController
   })
      : _tabController = tabController,
        super(key: key);
  final TabController _tabController;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: <Widget>[
            // Container(
            //   height: 100.0,
            //   color: Colors.blue,
            // ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  // color: Colors.red,
                  // padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      // Text('Red container should be scrollable'),
                      // Container(
                      //   width: double.infinity,
                      //   height: 700.0,
                      //   padding: EdgeInsets.all(10.0),
                      //   color: Colors.white.withOpacity(0.7),
                      //   child: Text('I will have a column here'),
                      // )

                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.height * .9,
                        decoration: BoxDecoration(

                            // borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: NetworkImage(
                                  'https://placeimg.com/640/480/any',
                                ))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Text("lamdikey",style: TextStyle(color: Colors.white),),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: RotatedBox(
                                quarterTurns: 0,
                                child: Icon(
                                  Icons.share,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10, top: 10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: RotatedBox(
                                quarterTurns: 0,
                                child: Icon(
                                  Icons.bookmark_add_outlined,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                            // Text("lamdikey",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ListTile(
                              // leading: Icon(Icons.arrow_drop_down_circle),
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: const Text('Card title 1'),
                              ),

                              subtitle: Text(
                                'Secondary Text',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Column(
                              // mainAxisSize: MainAxisSize.min,

                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // TextButton.icon(onPressed: (){}, icon: Icon(Icons.star), label: Text("4.3")),
                                SizedBox(
                                    height: 25,
                                    width: 70,
                                    child: ElevatedButton.icon(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 10,
                                            primary: Colors.green,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        icon: Icon(
                                          // textDirection:TextDirection.rtl,
                                          Icons.star,
                                          size: 15,
                                        ),
                                        onPressed: () {},
                                        label: Text(
                                          "4.3",
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ))),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 25,
                                  // width: 90,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Apply now"),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.purple,
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 15, right: 15, bottom: 15),
                        child: Column(
                          children: [
                            //  Divider(thickness: 0.5,color: Colors.grey,),
                            Divider(
                              color: Colors.black,
                              height: 20,
                              thickness: .5,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Text(
                              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: .2),
                      // Card(
                      //   // elevation: 5,
                      //   margin: EdgeInsets.only(left: 5, right: 5),
                      //   child: Container(
                      //     decoration: BoxDecoration(color: Colors.grey),
                      //     child: TabBar(
                      //       // overlayColor: ,

                      //       indicatorColor: Colors.black,
                      //       labelColor: Colors.red,
                      //       controller: _tabController,

                      //       tabs: const <Widget>[
                      //         Tab(
                      //           text: "data",
                      //           // icon: Icon(Icons.cloud_outlined,color: Colors.red,),
                      //         ),
                      //         Tab(
                      //           icon: Icon(Icons.beach_access_sharp),
                      //         ),
                      //         Tab(
                      //           icon: Icon(Icons.brightness_5_sharp),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // TabBarView(
                      //     controller: _tabController,
                      //     children: [
                      //       Text("hi there"),
                      //       Text("hi there"),
                      //       Text("hi there"),
                          
                      //     ])

                        Expanded(

                          flex: 1,
                         child: SizedBox(
                           height: MediaQuery.of(context).size.height,
                           child: TabBarView(
                             controller: _tabController,
                             children: <Widget>[
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.all(20),
                                     child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,

                                       children: [
                                          Text(
                                       "Descritption",
                                       style:
                                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(top:8.0),
                                       child: Text(
                                           "Generating random paragraphs can be an excellent way for writers to get their creative flow going at the beginning of the day. The writer has no idea what topic the random paragraph will be about when it appears. This forces the writer to use creativity to complete one of three common writing challenges. The writer can use the paragraph as the first one of a short story and build upon it. A second option is to use the random paragraph somewhere in a short story they create. The third option is to have the random paragraph be the ending paragraph in a short story. No matter which of these challenges is undertaken, the writer is forced to use creativity to incorporate the paragraph into their writing."),
                                     ),
                                     Text(
                                           "Generating random paragraphs can be an excellent way for writers to get their creative flow going at the beginning of the day. The writer has no idea what topic the random paragraph will be about when it appears. This forces the writer to use creativity to complete one of three common writing challenges. The writer can use the paragraph as the first one of a short story and build upon it. A second option is to use the random paragraph somewhere in a short story they create. The third option is to have the random paragraph be the ending paragraph in a short story. No matter which of these challenges is undertaken, the writer is forced to use creativity to incorporate the paragraph into their writing."),
                                       ],

                                     ),
                                   ),

                                 ],
                               ),
                               Center(
                                 child: Text("It's rainy here"),
                               ),
                               Center(
                                 child: Text("It's sunny here"),
                               ),
                             ],
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(8),
          child: ElevatedButton(onPressed: () {}, child: Text("Apply now")),
        ),
      );
}
