import 'package:expense_planner/add_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 241, 242, 1),
      appBar: AppBar(
        title: Text('Home Page',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return AddingCard();
            }));
          }, icon:Icon(Icons.add,color: Colors.black,),)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                height: 210,
                child: AspectRatio(
                  aspectRatio: 3.1/2,
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red.withOpacity(0.8),
                                        shape: BoxShape.circle
                                      ),
                                    ),
                                    Transform.translate(offset: Offset(-15, 0),
                                      child: Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                            color: Colors.orange.withOpacity(0.8),
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Rs ',style: TextStyle(color: Colors.white),),
                                    Text('1000',style:TextStyle(color: Colors.white,fontSize: 30))
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text('MasterCard',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text('6078 **** **** 7820',style: TextStyle(color: Colors.white,fontSize: 15,letterSpacing:6),),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Last Transactions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black45),),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_upward,color: Colors.red,),
                        Text('Shopping',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black45),)
                      ],
                    ),
                    Row(
                      children: [
                        Text('- Rs 100000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black45),)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_downward,color: Colors.green,),
                        Text('Salary',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black45),)
                      ],
                    ),
                    Row(
                      children: [
                        Text('- Rs 500000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black45),)
                      ],
                    )
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
