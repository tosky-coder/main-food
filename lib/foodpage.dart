import 'package:flutter/material.dart';
import 'package:mainfoodapp/GetStartedPage.dart';
import 'package:mainfoodapp/add_to_cart.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({ Key? key }) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        shadowColor: Colors.transparent,
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: IconButton(
            onPressed: () {
              var route = MaterialPageRoute(builder: (context) => GetStarted());
                   Navigator.push(context, route);
            },
             icon: Icon(Icons.arrow_back_ios),
        ),
        ),
        actions: [
          CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: Icon(Icons.shopping_cart),
        ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/chef2.jpeg"),
                    fit: BoxFit.cover
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    "The  Fastest  in \n  Delivery  Food",
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "Roboto",
                    )
                    ),
                    SizedBox(height: 10,),
              MaterialButton(
                onPressed:(){},
                child: Text("Order Now"),
                color: Colors.red,
                textColor: Colors.white,
              )
                  ],
                  
                ),
              ),
              SizedBox(
                height: 20
              ),
              Container(
                child: Row(
                  children: [
                    Text("Categories",
                        style: TextStyle(
                                  color: Colors.teal[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: "Roboto",
                    
                        )
                      ),
                    
                  ],
                ),
              ),
               SizedBox(
                height: 20
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Card(
                        shape: StadiumBorder(),
                        elevation: 10,
                        shadowColor: Colors.transparent,
                        color: Colors.grey,
                        child: Container(
                          height: 50,
                          width: 110,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage("assets/images/bug1.jpeg"),
                              ),
                              Text("Burger")
                            ],
                          ),
                        )
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                      onTap: (){},
                      child: Card(
                        shape: StadiumBorder(),
                        elevation: 10,
                        shadowColor: Colors.transparent,
                        color: Colors.grey,
                        child: Container(
                          height: 50,
                          width: 110,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage("assets/images/piz1.jpeg"),
                              ),
                              Text("Pizza"),
                            ],
                          ),
                        )
                        ),
                      ),
                    SizedBox(width: 10),
                      InkWell(
                      onTap: (){},
                      child: Card(
                        shape: StadiumBorder(),
                        elevation: 10,
                        shadowColor: Colors.transparent,
                        color: Colors.grey,
                        child: Container(
                          height: 50,
                          width: 110,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage("assets/images/cake.jpg"),
                              ),
                              Text("Cake"),
                            ],
                          ),
                        )
                        ),
                      ),
                      
                    SizedBox(width: 10),
                      InkWell(
                      onTap: (){},
                      child: Card(
                        shape: StadiumBorder(),
                        elevation: 10,
                        shadowColor: Colors.transparent,
                        color: Colors.grey,
                        child: Container(
                          height: 50,
                          width: 110,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage("assets/images/bugcl1.jpeg"),
                              ),
                              Text("pastry"),
                            ],
                          ),
                        )
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                      onTap: (){},
                      child: Card(
                        shape: StadiumBorder(),
                        elevation: 10,
                        shadowColor: Colors.transparent,
                        color: Colors.grey,
                        child: Container(
                          height: 50,
                          width: 110,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage("assets/images/piz1.jpeg"),
                              ),
                              Text("cheese"),
                            ],
                          ),
                        )
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height:10),
              Container(
                child: Row(
                  children:[
                  Text("Available Now",
                        style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: "Roboto",
                    
                        )
                      ),
                  ]
                )
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        var route = MaterialPageRoute(builder: (context) => addCart());
                   Navigator.push(context, route);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage("assets/images/bug1.jpeg"),
                            ),
                            Text("Double Burger",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            Text("Cheesy Mozarella",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            Text("\$600",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            )
                            
                          ],
                        ),
                      )

                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage("assets/images/bug2.jpeg"),
                            ),
                            Text("Beef Burger",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            Text("Double Beef",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            Text("\$500",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            )
                            
                          ],
                        ),
                      )

                    ),
                    SizedBox(width:20),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage("assets/images/piz1.jpeg"),
                            ),
                            Text("Pizza",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            Text("Pizza Margherita",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            Text("\$400",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            )
                            
                          ],
                        ),
                      )

                    ),
                    SizedBox(width:20),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage("assets/images/cake.jpg"),
                            ),
                            Text("Chocolate Cake",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            Text("choco cake",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            ),
                            Text("\$600",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Courier",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            )
                            
                          ],
                        ),
                      )

                    ),
                  ],
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}