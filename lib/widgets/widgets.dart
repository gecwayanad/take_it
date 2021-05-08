import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:take_it/Screens/homeScreen.dart';
import 'package:take_it/models/medicine_info.dart';
import 'package:take_it/data.dart';

Widget editMedicine(String medicineName, String time, bool check){

   return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  border: Border.all(color: Colors.red[300]),
                  borderRadius: BorderRadius.circular(15)),
              height: 80,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                        medicineName,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        time,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(onPressed: (){
                          removeData(medicineName,time );



                        },
                         child: Text("delete")),
                      )

                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ));
}


class Timelist extends StatelessWidget {
  String time;
  Timelist({this.time});
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
        
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(this.time),
            SizedBox(
              width: 170,
            ),
            IconButton(
                icon: Icon(
                  Icons.close,
                  size: 20,
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}











//home page medicin view
Widget medicinWidget(String medicineName, String time){
  return                     Padding(//copy
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor("FFA1A1"),
                           boxShadow: [new BoxShadow(
                            color: Colors.black45,
                            blurRadius: 4.0,
                            offset: Offset(0,4)
                          ),]
                        ),
                        //container for upconing medicin
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //column inside upcoming medicin container
                          children: [
                            
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,

                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Align(
                                    alignment:Alignment.centerLeft,
                                                                child: Text(medicineName, 
                                    style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    shadows: [new BoxShadow(
                                          color: Colors.black45,
                                          blurRadius: 4.0,
                                          offset: Offset(0,4)
                                        ),]
                                    )),
                                    ),
                                  ),
                                ),
                                                                                          Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    
                                    Row(
                                    children: [
                                    Text(time,
                                     style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      shadows: [new BoxShadow(
                                            color: Colors.black45,
                                            blurRadius: 4.0,
                                            offset: Offset(0,4)
                                          ),]
                                      )),
                                    ),
                                    Text("pm",
                                      style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      shadows: [new BoxShadow(
                                            color: Colors.black45,
                                            blurRadius: 4.0,
                                            offset: Offset(0,4)
                                          ),]
                                      )),                                   
                                    )
                      ]),
                            
                          
                          
                                  ]),
                      ),
                              
                            

                                  
                                  

                              ]),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Container(
                                      
                                      decoration: BoxDecoration(
                                        
                                        
                                        color: HexColor("FFB8B8"),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      width: 100,
                                      height: 100,
                                      
                                    ),
                                  )
                                  

                          ])));
}
//button widget
Widget customButton(String name, double height, double width, double fontsize){
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      boxShadow: [new BoxShadow(
                            color: Colors.black45,
                            blurRadius: 4.0,
                            offset: Offset(0,4)
                          ),

      ],
      borderRadius: BorderRadius.circular(30),
      color: HexColor("FFA1A1")
    ),
    child: Align(
      alignment: Alignment.center,
          child: Text(name, style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: fontsize, color: Colors.white,
      ))),
    ),

  );
}

