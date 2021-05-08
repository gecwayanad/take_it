import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:take_it/Screens/homeScreen.dart';
import 'package:take_it/models/medicine_info.dart';
import 'package:take_it/widgets/widgets.dart';
import 'package:take_it/data.dart';

class ShowMedicinepage extends StatefulWidget {
  @override
  _ShowMedicinepageState createState() => _ShowMedicinepageState();
}

class _ShowMedicinepageState extends State<ShowMedicinepage> {
  bool check = true;
  bool rem;
   
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
            children: [
              Container(
                  
                  
                    child: 
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                ),
                                onPressed: () async {
                                  updatesScrollData();
                                  SharedPreferences saveAllmedicineData = await SharedPreferences.getInstance();

                                  bool isittruthhhhome = saveAllmedicineData.getStringList("medicine").isEmpty;
                                  if(isittruthhhhome == true){
                                      showShedule = [];
                                    }
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => HomeScreen()));
                                }),
                          )),
                    
                  ),
                  Container(
                    height:MediaQuery.of(context).size.height -100,
                    child: ListView(
                        scrollDirection:Axis.vertical,
                        children:showSheduleShowMedicineperfect,
                      ),
                  )
            ],
          ),
        ),
            
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.extended(
            onPressed: () async{

                        updatesScrollData();
                        SharedPreferences saveAllmedicineData = await SharedPreferences.getInstance();
                        bool isittruthhhh = saveAllmedicineData.getStringList("medicine").isEmpty;
                        if(isittruthhhh == true){
                          showSheduleShowMedicineperfect = [];
                        }

                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                        builder: (BuildContext context) => super.widget));
            },
            label: Text(
              'Refresh',
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.red[300],
          ),
        ));
  }
}
