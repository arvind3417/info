import 'package:flutter/material.dart';

class abdb extends StatefulWidget {
  const abdb({Key? key}) : super(key: key);

  @override
  State<abdb> createState() => _abdbState();
}

class _abdbState extends State<abdb> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
height: 100,
decoration: BoxDecoration(
  color: Colors.red
),
          ),
          Container(
           
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
               controller: _tabController,
                  tabs: [
                    Tab(text: 'Places'),
                    Tab(text: 'Inspiration'),
                    Tab(text: 'Emotions'),
                  ],
                ),
              ),
      ),
      Container(
              padding: const EdgeInsets.only(left: 20),
              // height: 300,
              width: double.maxFinite,
              child: Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             height: 800,
                            //  height: MediaQuery.of(context).size.height,
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
                    // ListView.builder(
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: 5,
                    //     itemBuilder: (_, i) {
                    //       return GestureDetector(
                    //           onTap: () {},
                    //           child: Container(
                    //             child: Text("1sttab"),
                    //             width: 200,
                    //             height: 300,
                    //             margin: const EdgeInsets.only(
                    //                 right: 10, top: 10, bottom: 0),
                    //             decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(20),
                    //               // image: DecorationImage(
                    //               //     image: AssetImage("img/mountain1.jpeg"),
                    //               //     fit: BoxFit.fitHeight),
                    //             ),
                    //           ));
                    //     }),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (_, i) {
                          return GestureDetector(
                              onTap: () {},
                              child:  Container(
                                child: Text("2ndtab"),
                                    width: 200,
                                    height: 300,
                                    margin: const EdgeInsets.only(
                                        right: 10, top: 10, bottom: 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      
                                      
                                    ),
                                  ));
                        }),
                    Material(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        title: Text("Content"),
                      ),
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        // appBar: AppBar(leading: IconButton(onPressed: () {
            
        // }, icon: Icon(Icons.arrow_back)),),
        body: SafeArea(
          child: ListView(
            // shrinkWrap: true,
            children: [
              
              Container(
                height: 80,
                child: Stack(
                  children: [
                    Container(
                      // height: size.height * .2 ,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.only(
                              // bottomLeft: Radius.circular(10),
                              // bottomRight: Radius.circular(10)
                              )
                              ),
                    ),
                    // Positioned(
                    //     left: 10,
                    //     bottom: 30,
                    //     right: 10,
                    //     child: Container(
                    //       margin: EdgeInsets.symmetric(horizontal: 10),
                    //       // height: 54,
                    //       decoration: BoxDecoration(
                    //           // color: Colors.white,
                    //           borderRadius: BorderRadius.circular(20)),
                    //       child: Row(
                    //         children: [
                    //           Expanded(
                    //             child: TextField(
                    //                 decoration: InputDecoration(
                    //                     filled: true,
                    //                     fillColor: Colors.white,
                    //                     hintText: "Search")),
                    //           ),
                    //           // sortbar()
                    //         ],
                    //       ),
                        // )),
                         Positioned(
                        left: 10,
                        top: 0,
                        right: 10,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          // height: 54,
                          decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    margin: EdgeInsets.only(left: 0,top: 20),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.black, borderRadius: BorderRadius.circular(30)),
                                    child: RotatedBox(
                                      quarterTurns: 0,
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                              ),
                               InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                    margin: EdgeInsets.only(left: 0,top: 20),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.black, borderRadius: BorderRadius.circular(30)),
                                    child: RotatedBox(
                                      quarterTurns: 0,
                                      child: Icon(
                                        Icons.bookmark_outline_outlined,
                                        color: Colors.white,
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
                          // child: Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     // Text("lamdikey",style: TextStyle(color: Colors.white),),
                          //     Container(
                          //       margin: EdgeInsets.only(left: 10, top: 10),
                          //       padding: EdgeInsets.all(10),
                          //       decoration: BoxDecoration(
                          //           color: Colors.white,
                          //           borderRadius: BorderRadius.circular(30)),
                          //       child: RotatedBox(
                          //         quarterTurns: 0,
                          //         child: Icon(
                          //           Icons.share,
                          //           color: Colors.black,
                          //           size: 20,
                          //         ),
                          //       ),
                          //     ),
                          //     Container(
                          //       margin: EdgeInsets.only(right: 10, top: 10),
                          //       padding: EdgeInsets.all(10),
                          //       decoration: BoxDecoration(
                          //           color: Colors.white,
                          //           borderRadius: BorderRadius.circular(30)),
                          //       child: RotatedBox(
                          //         quarterTurns: 0,
                          //         child: Icon(
                          //           Icons.bookmark_add_outlined,
                          //           color: Colors.black,
                          //           size: 20,
                          //         ),
                          //       ),
                          //     ),
                          //     // Text("lamdikey",style: TextStyle(color: Colors.white),),
                          //   ],
                          // ),
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
                        
                         Card(
                          // elevation: 5,
                          margin: EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                            child: TabBar(
                              // overlayColor: ,
        onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                    tabController?.animateTo(index);
                  });
                },
                indicator: UnderlineTabIndicator(insets: EdgeInsets.all(10),borderSide: BorderSide(width: 1.0, color: Colors.white), ),
                              indicatorColor: Colors.black,
                              labelColor: Colors.white,
                              controller: tabController,
        
                              tabs: const <Widget>[
                                Tab(
                                  text: "College",
                                  // icon: Icon(Icons.cloud_outlined,color: Colors.red,),
                                ),
                                Tab(
                                  text: "Hostels",
                                  // icon: Icon(Icons.beach_access_sharp),
                                ),
                                Tab(
                                  text: "Somethin",
                                  // icon: Icon(Icons.brightness_5_sharp),
                                ),
                              ],
                            ),
                          ),
                        ),
              // TabBar(
           
              //   tabs: <Widget>[
              //     Tab(
              //       text: 'one',
              //     ),
              //     Tab(
              //       text: 'two',
              //     ),
              //     Tab(
              //       text: 'three',
              //     ),
              //   ],
              //   controller: tabController,
              //   onTap: (index) {
              //     setState(() {
              //       selectedIndex = index;
              //       tabController?.animateTo(index);
              //     });
              //   },
              // ),
              IndexedStack(
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
                  // Visibility(
                  //   child: Text('test1'),
                  //   maintainState: true,
                  //   visible: selectedIndex == 0,
                  // ),
                  Visibility(
                    child: Text('test2'),
                    maintainState: true,
                    visible: selectedIndex == 1,
                  ),
                  Visibility(
                    child: Text('test3'),
                    maintainState: true,
                    visible: selectedIndex == 2,
                  ),
                ],
                index: selectedIndex,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(style: ElevatedButton.styleFrom(primary:Colors.purple),onPressed: () {}, child: Text("Apply now")),)
      ),
    );
  }
}