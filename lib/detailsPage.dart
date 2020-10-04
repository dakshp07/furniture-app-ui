import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : new Container(
        padding: const EdgeInsets.only(top: 40),
        child: new Container(
          padding: const EdgeInsets.all(20),
          child: new Column(
            children: [
              new Row(
                children: [
                  new IconButton(icon: new Icon(Icons.arrow_back_ios,size: 35,color: Colors.black,), onPressed: (){
                    Navigator.pop(context);
                  }),
                  new Padding(padding: const EdgeInsets.symmetric(horizontal: 143)),
                  new Icon(Icons.shopping_cart_outlined,size: 35,color: Colors.black,),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 30),),
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    new Stack(
                    children: [
                      new ClipRRect(
                    child: new Image.asset("assets/1.jpeg",width: 720,height: 250,fit: BoxFit.fitWidth,),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    new Container(
                          width: 720,height: 250,
                          alignment: Alignment.bottomRight,
                          child: new CircleAvatar(
                          child: new Icon(Icons.favorite_outline,size: 25,color: Colors.yellow,),
                          backgroundColor: Colors.white,
                        ),
                    ),
                    ],
                  ),
                  new Padding(padding: const EdgeInsets.only(top : 10),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text("Living Room",style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),),
                      new Padding(padding: const EdgeInsets.only(top : 5),),
                      new Text("\$550.00",style: TextStyle(fontSize: 35,color: Colors.black,),)
                    ],
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Row(
                    children: [
                      new Padding(padding: const EdgeInsets.symmetric(horizontal: 152)),
                      new FloatingActionButton(
                        elevation: 10,
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        backgroundColor: Colors.yellow[800],
                        child: new Icon(Icons.add,size: 35,color: Colors.white,),
                        onPressed: (){}
                        )
                    ],
                  ),
                      new Text("Description",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                      new Padding(padding: const EdgeInsets.only(top : 5),),
                      new Text("LoremIpsum LoremIpsum LoremIpsumLoremIpsum LoremIpsum LoremIpsum LoremIpsum LoremIpsum LoremIpsum LoremIpsum LoremIpsum",style: TextStyle(fontSize: 15,color: Colors.grey[700]),),
                      new Padding(padding: const EdgeInsets.only(top : 15),),
                      new Text("Photos",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                      new SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: new Row(
                          children: [
                            new ClipRRect(
                              child: new Image.asset("assets/2.jpeg",height: 100,fit: BoxFit.fitHeight,),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                            new ClipRRect(
                              child: new Image.asset("assets/3.jpeg",height: 100,fit: BoxFit.fitHeight,),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            new Padding(padding: const EdgeInsets.symmetric(horizontal: 5),),
                            new ClipRRect(
                              child: new Image.asset("assets/4.jpeg",height: 100,fit: BoxFit.fitHeight,),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ],
                        ),
                      )
                    ],
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