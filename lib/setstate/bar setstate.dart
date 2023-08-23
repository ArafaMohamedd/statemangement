import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';



class bar extends StatefulWidget {


  @override
  _barState createState() => _barState();
}

class _barState extends State<bar> {



  bool isHealthyPressed = false;
  bool isExecutingPressed = false;
  bool isCancelledPressed = false;
  bool isCompletedPressed = false;
  bool isDonePressed = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            children: [
              SizedBox(
            //    padding: EdgeInsets.fromLTRB(0, 4, 50, 50),
                child: TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(80, 10),
                      backgroundColor: isHealthyPressed ? Colors.blue : Colors.white12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                          side: BorderSide(color: Colors.grey)
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        isHealthyPressed = !isHealthyPressed;
                      });
                    },
                    child: Text('قيد التنفيذ', style: TextStyle(color: isHealthyPressed ? Colors.white : Colors.black),)),
              ),
              SizedBox(width: 30,),
              SizedBox(
                //padding: EdgeInsets.fromLTRB(0, 4, 50, 50),
                child: TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(80, 10),
                      backgroundColor: isExecutingPressed ? Colors.blue : Colors.white12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                          side: BorderSide(color: Colors.grey)
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        isExecutingPressed = !isExecutingPressed;
                      });
                    },
                    child: Text('الملغيه', style: TextStyle(color: isExecutingPressed ? Colors.white : Colors.black, fontFamily: "nuito"),)),


              ),
              SizedBox(width: 30,),
              SizedBox(
               // padding: EdgeInsets.fromLTRB(0, 4, 50, 50),
                child: TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(80, 10),
                      backgroundColor: isCancelledPressed ? Colors.blue : Colors.white12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                          side: BorderSide(color: Colors.grey)
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        isCancelledPressed = !isCancelledPressed;
                      });
                    },
                    child: Text('المكتمله', style: TextStyle(color: isCancelledPressed ? Colors.white : Colors.black, fontFamily: "nuito"),)),


              ),
              SizedBox(width: 40,),
              SizedBox(
               // padding: EdgeInsets.fromLTRB(0, 4, 50, 50),
                child: TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(80, 10),
                      backgroundColor: isDonePressed ? Colors.blue : Colors.white12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                          side: BorderSide(color: Colors.grey)
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        isDonePressed = !isDonePressed;
                      });
                    },
                    child: Text('تمت', style: TextStyle(color: isDonePressed ? Colors.white : Colors.black, fontFamily: "nuito"),)),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
