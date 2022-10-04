import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mainfoodapp/foodpage.dart';

class addCart extends StatefulWidget {
  const addCart({Key? key}) : super(key: key);

  @override
  State<addCart> createState() => _addCartState();
}

class _addCartState extends State<addCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.yellow[300],
        shadowColor: Colors.transparent,
        toolbarHeight: 80,
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey,
          child: IconButton(icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            var route = MaterialPageRoute(builder: (context) => FoodPage());
                   Navigator.push(context, route);
          },
          ),
        ),
          actions: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: IconButton(icon:Icon(Icons.menu),
              onPressed: () {},
            )
            )
          ]
        ),
        body: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: MaterialButton(
                    onPressed: (() {}),
                    minWidth: 300,
                    height: 40,
                    shape: StadiumBorder(),
                    child: Text("Add to Cart"),
                    color: Colors.red,
                    textColor: Colors.white,
                )
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                 margin: EdgeInsets.only(left: 170,top: 15,right: 180),
                 child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/bug2.jpeg")
                 ),
                ),
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Row(
                    children: [
                      Text("Double Burger",
                      style: TextStyle(fontFamily: "Courier",fontWeight: FontWeight.bold,fontSize: 30),
                      ),
                      Expanded(child: Container(
                        alignment: Alignment.bottomRight,
                        child: Text("\$600",style: TextStyle(fontFamily: "Courier",fontWeight: FontWeight.bold,fontSize: 30)))
                        )
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Text("This double burger uses 100% quality beef with \n"
                  "sliced tomatoes,cucumbers,vegetables \n and onions...",style: 
                  TextStyle(fontFamily: "Courier",fontWeight: FontWeight.bold,fontSize: 20)),
                )
              ],
            )

          ],

        ),
      );
  
    
  }
}