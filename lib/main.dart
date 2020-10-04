import 'package:flutter/material.dart';
import 'package:furniture_app_ui/detailsPage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness: Brightness.light,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        padding:  const EdgeInsets.only(top : 40),
        child: new Container(
          padding: const EdgeInsets.all(20),
          child: new Column(
            children: [
              new Row(
               children: [
                new Padding(padding: const EdgeInsets.symmetric(horizontal: 165)),
                new Icon(Icons.shopping_cart_outlined,size: 35,color: Colors.black,),
               ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 25)),
              new Column(
                children: [
                  new Row(
                    children: [
                      new Text("What are you",style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  new Row(
                    children: [
                      new Text("looking for?",style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  new Padding(padding :const EdgeInsets.only(top : 15)),
                  new Card(
                    color: Colors.white,
                    shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new TextField(
                      decoration: new InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Colors.grey[700],size: 25,),
                        hintText: "Search",
                        hintStyle: TextStyle(fontSize: 25,color: Colors.grey[700])
                      ),
                    ),
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 15),),
                  new SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: new Row(
                      children: [
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Text("Living Room",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                            new Padding(padding: const EdgeInsets.only(top: 5),),
                            new GestureDetector(
                              child: new ClipRRect(
                              child: new Image.asset("assets/1.jpeg",height: 200,fit: BoxFit.fitHeight,),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DetailPage()));
                            },
                            )
                          ],
                        ),
                        new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Text("Dining Room",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                            new Padding(padding: const EdgeInsets.only(top: 5),),
                            new ClipRRect(
                              child: new Image.asset("assets/4.jpeg",height: 200,fit: BoxFit.fitHeight,),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Padding(padding: const EdgeInsets.only(top: 20)),
                  new SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: new Column(
                      children: [
                        new Row(
                          children: [
                            new Text("Popular Products",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold)),
                            new Padding(padding: const EdgeInsets.symmetric(horizontal: 52)),
                            new Text("View More",style: TextStyle(fontSize: 15,color: Colors.grey[600]),)
                          ],
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 5)),
                        new SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: new Row(
                            children: [
                              new ClipRRect(
                                child: new Image.asset("assets/1.jpeg",height: 150,width: 150,fit: BoxFit.fitHeight,),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                              new ClipRRect(
                                child: new Image.asset("assets/4.jpeg",height: 150,width: 150,fit: BoxFit.fitHeight,),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                              new ClipRRect(
                                child: new Image.asset("assets/3.jpeg",height: 150,width: 150,fit: BoxFit.fitHeight,),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              )
                            ],
                          ),
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 11),),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            new Icon(Icons.home_outlined,size: 35,color: Colors.yellow,),
                            new Icon(Icons.favorite_outline,size: 35,color: Colors.grey[600]),
                            new Icon(Icons.person_add_outlined,size: 35,color: Colors.grey[600]),
                            new Icon(Icons.dashboard_outlined,size: 35,color: Colors.grey[600]),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}