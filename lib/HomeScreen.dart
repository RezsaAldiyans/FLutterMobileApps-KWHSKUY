import 'package:App_PPKWH/help_screen.dart';
import 'package:App_PPKWH/logind_signup.dart';
import 'package:App_PPKWH/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Account_screen.dart';
import 'package:App_PPKWH/search.dart';
import 'package:App_PPKWH/model/penjelasan1.dart';
import 'package:App_PPKWH/model/penjelasan2.dart';
import 'package:App_PPKWH/model/penjelasan3.dart';
import 'package:App_PPKWH/model/penjelasan4.dart';


const String _kGalleryAssetsPackage = 'flutter_gallery_assets';

class Home_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new Home();
// TODO: implement createStatezw

}

// class Photo {
//   Photo({
//     this.assetName,
//     this.assetPackage,
//     this.title,
//     this.caption,
//   });

//   final String assetName;
//   final String assetPackage;
//   final String title;
//   final String caption;
// }

// class Home extends State<Home_screen> {
//   List list = ['12', '11'];

//   List<Photo> photos = <Photo>[
//     Photo(
//       assetName: 'images/veg.jpg',
//       title: 'Fruits & Vegetables',
//     ),
//     Photo(
//       assetName: 'images/frozen.jpg',
//       title: 'Frozen Veg',
//     ),
//     Photo(
//       assetName: 'images/bev.jpg',
//       title: 'Beverages',
//     ),
//     Photo(
//       assetName: 'images/brand_f.jpg',
//       title: 'Brannded Food',
//     ),
//     Photo(
//       assetName: 'images/be.jpg',
//       title: 'Beauty & Personal Care',
//     ),
//     Photo(
//       assetName: 'images/home.jpg',
//       title: 'Home Care & Fashion',
//     ),
//     Photo(
//       assetName: 'images/nonveg.jpg',
//       title: 'Non Veg',
//     ),
//     Photo(
//       assetName: 'images/eggs.jpg',
//       title: 'Dairy, Bakery & Eggs',
//     ),
// ];

// final List<String> items = ['Balbhadra', 'Maulik', 'Roshi'];
// static const double height = 366.0;
// String name ='My Wishlist';
// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   final Orientation orientation = MediaQuery.of(context).orientation;
//   final ThemeData theme = Theme.of(context);
//   final TextStyle titleStyle =
//       theme.textTheme.headline.copyWith(color: Colors.black54);
//   final TextStyle descriptionStyle = theme.textTheme.subhead;
//   ShapeBorder shapeBorder;

class Home extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.red,
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: new AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.redAccent,
          title: Text(
            "KWHSKUY",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              tooltip: 'Search',
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Search()));
              },
              // onPressed: () async {
              //   final int selected = await showSearch<int>(
              //     context: context,
              //     //delegate: _delegate,
              //   );

              // },
            ),
            IconButton(
              onPressed: () {
                
              },
              tooltip: 'People',
              icon: const Icon(Icons.accessibility, color: Colors.white),
              // onPressed: () async {
              //   final int selected = await showSearch<int>(
              //     context: context,
              //     //delegate: _delegate,
              //   );

              // },
            ),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new Card(
                color: Colors.redAccent,
                child: UserAccountsDrawerHeader(
                  accountName: new Text("Robert Downey Jr",
                      style: TextStyle(color: Colors.white)),
                  accountEmail: new Text("robertdowney@gmail.com",
                      style: TextStyle(color: Colors.white)),
                  onDetailsPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountScreen()));
                  },
                  decoration: new BoxDecoration(
                    color: Colors.redAccent,

                    /* image: new DecorationImage(
               //   image: new ExactAssetImage('assets/images/lake.jpeg'),
                  fit: BoxFit.cover,
                ),*/
                  ),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.fakenamegenerator.com/images/sil-male.png")),
                ),
              ),
              new Card(
                elevation: 4.0,
                child: new Column(
                  children: <Widget>[],
                ),
              ),
              new Card(
                elevation: 0,
                child: new Column(
                  children: <Widget>[
                    new ListTile(
                        leading: Icon(Icons.settings),
                        title: new Text("Setting"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Setting_Screen(
                                        toolbarname: 'Setting',
                                      )));
                        }),
                    new Divider(),
                    new ListTile(
                        leading: Icon(Icons.help),
                        title: new Text("Help"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Help_Screen(
                                        toolbarname: 'Help',
                                      )));
                        }),
                  ],
                ),
              ),
              new Card(
                elevation: 4.0,
                child: new ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text(
                      "Logout",
                      style: new TextStyle(
                          color: Colors.redAccent, fontSize: 17.0),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login_Screen()));
                    }),
              )
            ],
          ),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        new Container(
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(right: 5.0)),
              GestureDetector(
                child: Container(
                  width: 350.0,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 130.0,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://sa.kapamilya.com/absnews/abscbnnews/media/2018/news/01/27/entre.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3.0),
                        ),
                        Expanded(
                            child: Text("   Selamat Datang Di Apps KWHSKUY!",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0))),
                        Expanded(
                            child: Text("Aplikasi Kewirausahawan!",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0))),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  null;
                },
              ),
              Padding(padding: EdgeInsets.only(right: 5.0)),
              // GestureDetector(
              //   child: Container(
              //     width: 350.0,
              //     child: Card(),
              //   ),
              //   onTap: () {
              //     null;
              //   },
              // ),
              // Padding(padding: EdgeInsets.only(right: 5.0)),
              // GestureDetector(
              //   child: Container(
              //     width: 350.0,
              //     child: Card(),
              //   ),
              //   onTap: () {
              //     null;
              //   },
              // ),
              Padding(padding: EdgeInsets.only(right: 10.0)),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 30.0)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(right: 10.0)),
            Text(
              "Tentang Materi Kewirausahawan",
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 10.0)),
        new Container(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(right: 10.0)),
              GestureDetector(
                child: Container(
                  width: 300.0,
                  child: Card(
                    color: Colors.redAccent,
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(10.0)),
                        Expanded(child: Text("Permodalan Dan Pembiayaan Usaha!",
                        style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0,color: Colors.white))),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Penjelasan1(),
                                  ),);
                                  }
              ),
              Padding(padding: EdgeInsets.only(right: 10.0)),

               GestureDetector(
                child: Container(
                  width: 300.0,
                  child: Card(
                    color: Colors.redAccent,
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(10.0)),
                        Expanded(child: Text("3 Golongan Pihak pemberi Modal atau Dana!",
                        style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0,color: Colors.white))),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Penjelasan2(),
                                  )
                                  );
                                  }
              ),



              Padding(padding: EdgeInsets.only(right: 10.0)),
              GestureDetector(
                child: Container(
                  width: 300.0,
                  child: Card(
                    color: Colors.redAccent,
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(10.0)),
                        Expanded(child: Text("Definisi Pembiayaan menurut Para Ahli!",
                        style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0,color: Colors.white))),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Penjelasan3(),
                                  ),);
                                  }
              ),
              Padding(padding: EdgeInsets.only(right: 10.0)),
              GestureDetector(
                child: Container(
                  width: 300.0,
                  child: Card(
                    color: Colors.redAccent,
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(10.0)),
                        Expanded(child: Text("Bagaimana Pembiayaan dapa dilakukan?",
                        style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17.0,color: Colors.white))),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Penjelasan4(),
                                  ),);
                                  }
              ),
              Padding(padding: EdgeInsets.only(right: 10.0)),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 25.0)),
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(right: 10.0)),
            Text(
              "Berita Kewirausahawan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 6.0)),
        Container(
          height: 200.0,
          child: GestureDetector(
            child: Container(
              width: 300.0,
              child: Card(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 130.0,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://static.businessworld.in/article/article_extra_large_image/1495800094_TCnejV_1495792945_FMNEge_startup-shutterstock470.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                    ),
                    Expanded(
                        child: Text(
                            "  7 Cara Memulai Bisnis Start Up usia muda",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15.0))),
                    Expanded(
                        child: Text("Baca Selengkapnya..",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0))),
                  ],
                ),
              ),
            ),
            onTap: () {
              null;
            },
          ),
        ),
        Container(
          height: 200.0,
          child: GestureDetector(
            child: Container(
              width: 300.0,
              child: Card(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 130.0,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://static.businessworld.in/article/article_extra_large_image/1495800094_TCnejV_1495792945_FMNEge_startup-shutterstock470.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                    ),
                    Expanded(
                        child: Text(
                            "  7 Cara Memulai Bisnis Start Up usia muda",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15.0))),
                    Expanded(
                        child: Text("Baca Selengkapnya..",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0))),
                  ],
                ),
              ),
            ),
            onTap: () {
              null;
            },
          ),
        ),
        Container(
          height: 200.0,
          child: GestureDetector(
            child: Container(
              width: 300.0,
              child: Card(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 130.0,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://static.businessworld.in/article/article_extra_large_image/1495800094_TCnejV_1495792945_FMNEge_startup-shutterstock470.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                    ),
                    Expanded(
                        child: Text(
                            "  7 Cara Memulai Bisnis Start Up usia muda",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15.0))),
                    Expanded(
                        child: Text("Baca Selengkapnya..",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0))),
                  ],
                ),
              ),
            ),
            onTap: () {
              null;
            },
          ),
        ),
      ],
    );
  }
}

//   final List<String> items = ['Balbhadra', 'Maulik', 'Roshi'];
//   static const double height = 366.0;
//   String name ='My Wishlist';
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     final Orientation orientation = MediaQuery.of(context).orientation;
//     final ThemeData theme = Theme.of(context);
//     final TextStyle titleStyle =
//         theme.textTheme.headline.copyWith(color: Colors.black54);
//     final TextStyle descriptionStyle = theme.textTheme.subhead;
//     ShapeBorder shapeBorder;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         backgroundColor: Colors.redAccent,

//         title: Text("KWHSKUY"),
//         actions: <Widget>[
//           IconButton(
//             tooltip: 'Search',
//             icon: const Icon(Icons.search),
//             onPressed: () async {
//               final int selected = await showSearch<int>(
//                 context: context,
//                 //delegate: _delegate,
//               );

//             },
//           ),
//           new Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: new Container(
//               height: 150.0,
//               width: 30.0,
//               child: new GestureDetector(
//                 onTap: () {
//                   /*Navigator.of(context).push(
//                   new MaterialPageRoute(
//                       builder:(BuildContext context) =>
//                       new CartItemsScreen()
//                   )
//               );*/
//                 },
//                 child: Stack(
//                   children: <Widget>[
//                     new IconButton(
//                         icon: new Icon(
//                           Icons.shopping_cart,
//                           color: Colors.black,
//                         ),
//                         onPressed: (){
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_screen()));
//                         }),
//                     list.length == 0
//                         ? new Container()
//                         : new Positioned(
//                             child: new Stack(
//                             children: <Widget>[
//                               new Icon(Icons.brightness_1,
//                                   size: 20.0, color: Colors.orange.shade500),
//                               new Positioned(
//                                   top: 4.0,
//                                   right: 5.5,
//                                   child: new Center(
//                                     child: new Text(
//                                       list.length.toString(),
//                                       style: new TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 11.0,
//                                           fontWeight: FontWeight.w500),
//                                     ),
//                                   )),
//                             ],
//                           )),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//       drawer: new Drawer(
//         child: new ListView(
//           children: <Widget>[
//             new Card(
//               child: UserAccountsDrawerHeader(
//                 accountName: new Text("Robert Downey Jr"),
//                 accountEmail: new Text("robertdowney@gmail.com"),
//                 onDetailsPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => Account_Screen()));
//                 },
//                 decoration: new BoxDecoration(
//                   backgroundBlendMode: BlendMode.difference,
//                   color: Colors.white30,

//                   /* image: new DecorationImage(
//                //   image: new ExactAssetImage('assets/images/lake.jpeg'),
//                   fit: BoxFit.cover,
//                 ),*/
//                 ),
//                 currentAccountPicture: CircleAvatar(
//                     backgroundImage: NetworkImage(
//                         "https://www.fakenamegenerator.com/images/sil-male.png")),
//               ),
//             ),
//             new Card(
//               elevation: 4.0,
//               child: new Column(
//                 children: <Widget>[
//                   new ListTile(
//                       leading: Icon(Icons.favorite),
//                       title: new Text(name),
//                       onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Screen(toolbarname: name,)));
//                       }),
//                   new Divider(),
//                   new ListTile(
//                       leading: Icon(Icons.history),
//                       title: new Text("Order History "),

//                   ),
//                 ],
//               ),
//             ),
//             new Card(
//               elevation: 4.0,
//               child: new Column(
//                 children: <Widget>[
//                   new ListTile(
//                       leading: Icon(Icons.settings),
//                       title: new Text("Setting"),
//                       onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Setting_Screen(toolbarname: 'Setting',)));
//                       }),
//                   new Divider(),
//                   new ListTile(
//                       leading: Icon(Icons.help),
//                       title: new Text("Help"),
//                       onTap: () {

//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Help_Screen(toolbarname: 'Help',)));

//                       }),
//                 ],
//               ),
//             ),
//             new Card(
//               elevation: 4.0,
//               child: new ListTile(
//                   leading: Icon(Icons.power_settings_new),
//                   title: new Text(
//                     "Logout",
//                     style:
//                         new TextStyle(color: Colors.redAccent, fontSize: 17.0),
//                   ),
//                   onTap: () {
//                     Navigator.push(context,MaterialPageRoute(builder: (context) => Login_Screen()));
//                   }),
//             )
//           ],
//         ),
//       ),
//       body: new SingleChildScrollView(
//         child: Container(
//           child: new Column(children: <Widget>[
//             new Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   _verticalD(),
//                   new GestureDetector(
//                     onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Screen(toolbarname: 'Fruits & Vegetables',)));
//                     },
//                     child: new Text(
//                       'Best value',
//                       style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.black87,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   _verticalD(),
//                   new GestureDetector(
//                     onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Screen(toolbarname: 'Fruits & Vegetables',)));
//                     },
//                     child: new Text(
//                       'Top sellers',
//                       style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.black26,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   _verticalD(),
//                   new Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       new GestureDetector(
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Screen(toolbarname: 'Fruits & Vegetables',)));
//                         },
//                       child: new Text(
//                           'All',
//                           style: TextStyle(
//                               fontSize: 20.0,
//                               color: Colors.black26,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       _verticalD(),
//                       IconButton(
//                         icon: keyloch,
//                         color: Colors.black26,
//                       )
//                     ],
//                   )
//                 ]),
//             new Container(
//               height: 188.0,
//               margin: EdgeInsets.only(left: 5.0),
//               child:
//                   ListView(scrollDirection: Axis.horizontal, children: <Widget>[
//                 SafeArea(
//                   top: true,
//                   bottom: true,
//                   child: Container(
//                     width: 270.0,

//                     child: Card(
//                       shape: shapeBorder,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           SizedBox(
//                             height: 180.0,
//                             child: Stack(
//                               children: <Widget>[
//                                 Positioned.fill(
//                                   child: Image.asset(
//                                     'images/grthre.jpg',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )

//                           /*Positioned(
//                           bottom: 16.0,
//                           left: 16.0,
//                           right: 16.0,
//                           child: FittedBox(
//                             fit: BoxFit.scaleDown,
//                             alignment: Alignment.centerLeft,
//                             child: Text('',
//                               style: titleStyle,
//                             ),
//                           ),
//                         ),*/
//                         ],
//                       ),
//                     ),
//                     // description and share/explore buttons
//                     // share, explore buttons
//                   ),
//                 ),
//                 SafeArea(
//                   top: true,
//                   bottom: true,
//                   child: Container(
//                     width: 270.0,

//                     child: Card(
//                       shape: shapeBorder,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           SizedBox(
//                             height: 180.0,
//                             child: Stack(
//                               children: <Widget>[
//                                 Positioned.fill(
//                                   child: Image.asset(
//                                     'images/grtwo.jpg',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )

//                           /*Positioned(
//                           bottom: 16.0,
//                           left: 16.0,
//                           right: 16.0,
//                           child: FittedBox(
//                             fit: BoxFit.scaleDown,
//                             alignment: Alignment.centerLeft,
//                             child: Text('',
//                               style: titleStyle,
//                             ),
//                           ),
//                         ),*/
//                         ],
//                       ),
//                     ),
//                     // description and share/explore buttons
//                     // share, explore buttons
//                   ),
//                 ),
//                 SafeArea(
//                   top: true,
//                   bottom: true,
//                   child: Container(
//                     width: 270.0,

//                     child: Card(
//                       shape: shapeBorder,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           SizedBox(
//                             height: 180.0,
//                             child: Stack(
//                               children: <Widget>[
//                                 Positioned.fill(
//                                   child: Image.asset(
//                                     'images/groceries.jpg',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )

//                           /*Positioned(
//                           bottom: 16.0,
//                           left: 16.0,
//                           right: 16.0,
//                           child: FittedBox(
//                             fit: BoxFit.scaleDown,
//                             alignment: Alignment.centerLeft,
//                             child: Text('',
//                               style: titleStyle,
//                             ),
//                           ),
//                         ),*/
//                         ],
//                       ),
//                     ),
//                     // description and share/explore buttons
//                     // share, explore buttons
//                   ),
//                 ),
//                 SafeArea(
//                   top: true,
//                   bottom: true,
//                   child: Container(
//                     width: 270.0,

//                     child: Card(
//                       shape: shapeBorder,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           SizedBox(
//                             height: 180.0,
//                             child: Stack(
//                               children: <Widget>[
//                                 Positioned.fill(
//                                   child: Image.asset(
//                                     'images/back.jpg',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )

//                           /*Positioned(
//                           bottom: 16.0,
//                           left: 16.0,
//                           right: 16.0,
//                           child: FittedBox(
//                             fit: BoxFit.scaleDown,
//                             alignment: Alignment.centerLeft,
//                             child: Text('',
//                               style: titleStyle,
//                             ),
//                           ),
//                         ),*/
//                         ],
//                       ),
//                     ),
//                     // description and share/explore buttons
//                     // share, explore buttons
//                   ),
//                 ),
//               ]),
//             ),
//             new Container(
//               margin: EdgeInsets.only(top: 7.0),
//               child: new Row(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     _verticalD(),
//                     new GestureDetector(
//                       onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Screen(toolbarname: 'Fruits & Vegetables',)));
//                       },
//                       child: new Text(
//                         'Categories',
//                         style: TextStyle(
//                             fontSize: 20.0,
//                             color: Colors.black87,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     _verticalD(),
//                     new GestureDetector(
//                       onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Screen(toolbarname: 'Fruits & Vegetables',)));
//                       },
//                       child: new Text(
//                         'Popular',
//                         style: TextStyle(
//                             fontSize: 20.0,
//                             color: Colors.black26,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     _verticalD(),
//                     new Row(
//                       children: <Widget>[
//                         new GestureDetector(
//                           onTap: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Screen(toolbarname: 'Fruits & Vegetables',)));
//                           },
//                           child: new Text(
//                             'Whats New',
//                             style: TextStyle(
//                                 fontSize: 20.0,
//                                 color: Colors.black26,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ],
//                     )
//                   ]),
//             ),
//             new Container(
//               alignment: Alignment.topCenter,
//               height: 700.0,

//               child: new GridView.builder(
//                   itemCount: photos.length,
//                   primary: false,
//                   physics: NeverScrollableScrollPhysics(),
//                   padding: const EdgeInsets.all(10.0),
//                   gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2),
//                   itemBuilder: (BuildContext context, int index) {
//                     return new GestureDetector(
//                       onTap: (){

//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Screen(toolbarname: 'Fruits & Vegetables',)));
//                       },

//                         child: new Container(
//                             margin: EdgeInsets.all(5.0),
//                             child: new Card(
//                               shape: shapeBorder,
//                               elevation: 3.0,
//                               child: new Container(
//                                 //  mainAxisSize: MainAxisSize.max,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: <Widget>[
//                                     SizedBox(
//                                       height: 152.0,
//                                       child: Stack(
//                                         children: <Widget>[
//                                           Positioned.fill(
//                                               child: Image.asset(
//                                             photos[index].assetName,
//                                             fit: BoxFit.cover,
//                                           )),
//                                           Container(
//                                             color: Colors.black38,
//                                           ),
//                                           Container(
//                                             //margin: EdgeInsets.only(left: 10.0),
//                                             padding: EdgeInsets.only(
//                                                 left: 3.0, bottom: 3.0),
//                                             alignment: Alignment.bottomLeft,
//                                             child: new GestureDetector(
//                                               onTap: () {
//                                                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Screen(toolbarname: 'Fruits & Vegetables',)));
//                                               },
//                                               child: new Text(
//                                                 photos[index].title,
//                                                 style: TextStyle(
//                                                     fontSize: 18.0,
//                                                     color: Colors.white,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               ),
//                                             ),
//                                           ),

//                                           /*Positioned(
//                                     child: FittedBox(

//                                      fit: BoxFit.fill,
//                                       alignment: Alignment.centerLeft,
//                                       child: Text(photos[index].title,
//                                         style: TextStyle(color: Colors.black87,fontSize: 15.0),
//                                       ),

//                                   )
//                                   )*/
//                                         ],
//                                       ),
//                                     ),

//                                     // new Text(photos[index].title.toString()),
//                                   ],
//                                 ),
//                               ),
//                             )
//                         )

//                     );
//                   }),
//             )
//           ]),
//         ),
//       ),
//     );
//   }
// }

//   }

/*
  new Container(
  alignment: Alignment.topCenter,
  child: GridView.count(
  primary: true,
  crossAxisCount: 2,
  childAspectRatio: 0.80,
  children: List.generate(photos.length, (index) {
  return getStructuredGridCell(photos[index]);
  }),
  ))*/
// Icon keyloch = new Icon(
//   Icons.arrow_forward,
//   color: Colors.black26,
// );

// _verticalD() => Container(
//       margin: EdgeInsets.only(left: 5.0, right: 0.0, top: 5.0, bottom: 0.0),
//     );
