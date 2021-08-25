import 'package:flutter/material.dart';

class AddingCard extends StatefulWidget {
  @override
  _AddingCardState createState() => _AddingCardState();
}

class _AddingCardState extends State<AddingCard> {
  var typeOfTransaction=["Credit","Debit"];
  String typeDone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 241, 242, 1),
      appBar: AppBar(
        title: Text('Add Card',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      labelText: 'Transaction Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        labelText: 'Description',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        labelText: 'Amount',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10),
                  child: DropdownButton(
                    hint: Text('Select the Transaction Type'),
                    value:typeDone ,
                    items: typeOfTransaction.map((type){
                      return DropdownMenuItem(
                        child: Text(type),
                        value: type,
                      );
                    }).toList(),
                    onChanged: (value){
                      setState(() {
                        typeDone=value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 500,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ElevatedButton(
                    child: Text('Add'),
                    onPressed: (){},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
