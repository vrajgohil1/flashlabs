import 'package:flashlabs/lab1.dart';
import 'package:flashlabs/lab2.dart';
import 'package:flashlabs/lab3.dart';
import 'package:flutter/material.dart';
import 'package:flashlabs/classes/labnumber.dart';

class UpdateScreen extends StatefulWidget{
  @override
  _UpdateState createState()=> _UpdateState();
}

class _UpdateState extends State<UpdateScreen>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text('Select Lab', 
          style:TextStyle(
            color: Colors.black,
          ),
          ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromRGBO(242, 242, 242, 1),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return Lab1();
                        }
                        )
                        );
                    },
                    child: LabNumber(
                      number: 1,
                      ),
                  ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return Lab2();
                        }
                        )
                        );
                    },
                      child: LabNumber(
                        number: 2,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return Lab3();
                        }
                        )
                        );
                    },
                      child: LabNumber(
                        number: 3,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    )
                ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}

