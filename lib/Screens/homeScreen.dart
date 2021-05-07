import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:take_it/Screens/addMedicinPage.dart';
import 'package:take_it/Screens/showMedicinpage.dart';
import 'package:take_it/data.dart';
import 'package:take_it/models/listViewData.dart';
import 'package:take_it/models/medicine_info.dart';
import 'package:take_it/widgets/widgets.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  void initState() {
    
    
    super.initState();
    
    

    
  }



  @override
  Widget build(BuildContext context) {
     double _widthofdiv = MediaQuery.of(context).size.width;

         
    return  Scaffold(
        body: Stack(
                  children:[ Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('asset/images/background.png'),
                fit: BoxFit.cover,
              ))
              
              
              ,),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(//copy
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                      child: Container(
                        width: _widthofdiv *.95,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor("FFB8B8"),
                           boxShadow: [new BoxShadow(
                            color: Colors.black45,
                            blurRadius: 4.0,
                            offset: Offset(0,4)
                          ),]
                        ),
                        //container for upconing medicin
                        child: Column(
                          //column inside upcoming medicin container
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 25),
                                                          child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Upcoming Medicines:",style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20, color: Colors.white, 
                                shadows: [new BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 4.0,
                                  offset: Offset(0,4)
                                ),]
                                )),),),
                            ),
                            Text("#medicine1", 
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
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    
                                    Row(
                                    children: [
                                    Text("5:30",
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
                                  ],
                                  ),
                                  ElevatedButton(onPressed: (){},
                                  child: Text("cancel"),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                    primary: HexColor("FFA1A1"),        //hex pluggin used
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                                  ),
                                  )
                                  ]
                              ),
                            ),
                            
                          
                          ],
                        ),
                      ),
                    ),
                    Text("shedule", 
                    style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      shadows: [new BoxShadow(
                                            color: Colors.black45,
                                            blurRadius: 4.0,
                                            offset: Offset(0,4)
                                          ),]
                                      )),
                    ),
                    Container(
                      //container for list view
                      child: Expanded(//expanded list view
                        child: ListView(
                          scrollDirection:Axis.vertical ,
                          children: showShedule ,//converting to list
                        ),

                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          updatesScrollData();
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => AddMedicine() ));
                        },
                        child: customButton("+add", 60, 175, 20)),
                      GestureDetector(
                        onTap: (){
                          // print(medicineNamesData);
                          // retriveAlarm();
                          // final uniqueData = allMedicineData.toSet().toList();//not working to remove identical sets
                          // print("uniqueData: $uniqueData");
                          updatesScrollData();
                          

                          




                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => ShowMedicinepage()));
                        },
                        child: customButton("view medicines", 60, 200, 20)),

                    ],
                  ),
                ),
              )
                  ])
            );
  }
}