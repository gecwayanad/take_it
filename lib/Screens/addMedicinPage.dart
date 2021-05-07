// backend on progress







import 'package:flutter/material.dart';
import 'package:take_it/Screens/homeScreen.dart';
import 'package:take_it/data.dart';
import 'package:take_it/models/medicine_info.dart';
import 'package:take_it/widgets/widgets.dart';

class AddMedicine extends StatefulWidget {
  @override
  _AddMedicineState createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
  String dropdownValue = 'AM';
  String dropdownValue1 = 'Befor Food';
  String textfieldData;


  //controllers
  TextEditingController medicineNameContoller = TextEditingController();
  TextEditingController timeContoller = TextEditingController();
  TextEditingController amOrPmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('asset/images/background.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => HomeScreen()));
                    }),
              ),
              //first main container
              Container(
                width: 350,
                height: 550,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red[100]),
                child: Column(
                  children: [
                    //camera icon
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            child: IconButton(
                              icon: Icon(Icons.camera_alt),
                              iconSize: 40,
                              onPressed: () {},
                            ))),
                    Container(
                        width: 300,
                        child: TextField(
                          controller: medicineNameContoller,
                          decoration: InputDecoration(
                              labelText: 'Name of the medicine',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.brown, width: 2.0),
                                borderRadius: BorderRadius.circular(25.0),
                              )),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Time',
                          ),
                        )),
                    //time row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 75,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Hrs',
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.brown, width: 2.0),
                                    borderRadius: BorderRadius.circular(15.0),
                                  )),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 75,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Min',
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.brown, width: 2.0),
                                    borderRadius: BorderRadius.circular(15.0),
                                  )),
                            )),
                        SizedBox(width: 20),
                        //dropdown for am pm
                        DropdownButton<String>(
                          dropdownColor: Colors.red[100],
                          value: dropdownValue,
                          elevation: 16,
                          style: const TextStyle(color: Colors.brown),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['AM', 'PM']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        ElevatedButton(
                          child: Text('Add'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red[300]),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ))),
                          onPressed: () {
                            


                            

                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //2nd container list
                    Container(
                      child: ListView(
                        children: [
                          Timelist(
                            time: '7:30 PM',
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.red[200],
                          borderRadius: BorderRadius.circular(20)),
                      height: 170,
                      width: 300,
                    ),
                    //dropdown for after and befor food
                    DropdownButton<String>(
                      dropdownColor: Colors.red[100],
                      value: dropdownValue1,
                      elevation: 16,
                      style: const TextStyle(color: Colors.brown),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue1 = newValue;
                        });
                      },
                      items: <String>['Befor Food', 'After Food']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        //floating add button
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.extended(



            onPressed: () {
              //onpressed final add button im going to take medicine name form field and also the time,
              //and pssing that value to add alarm()[origin in medicineInfo.dart]
              


              textfieldData = medicineNameContoller.text;//taking medicines name from textfield using controller


              if (textfieldData != ''){//checking medicine name is not null
                medicineNamesData.add(textfieldData);
                //adding the medicine data into shared preferences
                addAlarm(alarmTimes, medicineNameContoller.text);
                print(medicineNamesData);
              
              }
              else{
                print('field is null');
              }




              //adding times into a list called 
              // alarmTimes.add(timeList);
              // will added in future currently i aldready defined it
              
              //adding medicine name to a list so it can be called in HomeScreen()




              //

            },



            backgroundColor: Colors.red[300],
            label: Text('Add'),
          ),
        ));
  }
}
