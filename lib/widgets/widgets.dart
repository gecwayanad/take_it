import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:take_it/data.dart';

class MedicineEdit extends StatefulWidget {
  String medicinename;

  MedicineEdit({this.medicinename}); //constructor
  @override
  _MedicineEditState createState() => _MedicineEditState();
}

class _MedicineEditState extends State<MedicineEdit> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
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
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      //text button name to go back to its edit screen
                      onPressed: () {},
                      child: Text(
                        widget.medicinename,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                  SizedBox(
                    width: 130,
                  ),
                  Checkbox(
                    //checkbox
                    value: check,
                    activeColor: Colors.red[200],
                    onChanged: (bool value) {
                      setState(() {
                        check = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ));
  }
}











//home page medicin view
Widget medicinWidget(BuildContext context){
  return                     Padding(//copy
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Container(
                        height: 175,
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
                              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Align(
                                alignment:Alignment.centerLeft,
                                                            child: Text("#medicine1", 
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
                                  Container(
                                    width: 100,
                                    height: 100,
                                    color: Colors.white,
                                  )
                                  ]
                              ),
                            ),
                            
                          
                          ],
                        ),
                      ),
                    );
}
//button widget
Widget customButton(String name, double height, double width){
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
          child: Text(name, style: GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 20, color: Colors.white,
      ))),
    ),

  );
}