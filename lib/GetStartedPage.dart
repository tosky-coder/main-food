import 'package:flutter/material.dart';
import 'package:mainfoodapp/foodpage.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(5),
        width: double.infinity,
        child:Column(
          children: [
          Container(
              width: double.infinity,
              height: 300,
              child: Image.asset("assets/images/chef3.jpeg",
              fit: BoxFit.cover,
              ),
            ),
            Container(
                      height: 300,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50))),
                          child: Column(
                            children: [
                              Center(child: SizedBox(height: 60,)),
                              Text("The  Fastest  in \n  Delivery  Food",
                              style: TextStyle(
                                color: Colors.teal[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: "Roboto",
                              ),),
                              SizedBox(
                                height: 10,
                              ),
                              Center(child: Text("Our job is to filling your tummy with \n delicious food and fast delivery")),

                              SizedBox(height: 30),
                             
                             
                              Container(
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.all(12),
                                child: MaterialButton(
  
                                onPressed: () {
                                   var route = MaterialPageRoute(builder: (context) => FoodPage());
                                   Navigator.push(context, route);
                                },
                                minWidth: 150.0,
                                shape: StadiumBorder(),
                                child: Text("Get Started"),
                                color: Colors.red,
                                textColor: Colors.white, 
                                ),
                              )

                              
                              
                            ],
                          )
                          
                        
                          ),
          ]
           ),        
            )
          
        ); 
          
    
      
        




    
  }
}