import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:take_it/Screens/homeScreen.dart';
import 'package:take_it/data.dart';
import 'package:take_it/models/listViewData.dart';
import 'package:take_it/widgets/widgets.dart';
import 'package:take_it/Screens/homeScreen.dart';
import 'package:take_it/Screens/showMedicinpage.dart';





class MedicineInfo{
DateTime medicineDateTime;
String medicineName;

MedicineInfo(this.medicineDateTime, this.medicineName);

}

//--------------------------------------------------------------------------------------------------------------------------------------------
//                          ADD ALARM FUNCTION HERE
//FUCTION IS  CALLED IN PAGES :
//1.addMedicinepage.dart
//
//this fuction used to add medicine into shared preference
//features:
//1.add function into shared preference named saveAllmedicineData("key   => 'medicine'")
//
//INPUT :
//list time ==> listed all medicine times [time1,time2,time3,.....]
//String medicine name ==> name of medicine
//OUTPUT:
//
//if input was medicine1 at 2 times in a day
//and  medicine 2 in 1 time in a day
//
//
//out will be stored in shared prefrence
//in format:
//
//[{medicine1,first time of medicine1 }, {medicine1, second time of medicine1}, {medicine2, first time of medicine1}]
//
//
//
//
//
//
//
//--------------------------------------------------------------------------------------------------------------------------------------------

addAlarm(List time, String medicineName)async{

  SharedPreferences saveAllmedicineData = await SharedPreferences.getInstance();



  medicineNamesData.forEach((element){ //for each elements in  medicine names making set of {medicine , time}
      

  List intermediate = time;
  intermediate.forEach((element2) {
    allMedicineData.add({'$medicineName', '$element2'});




  });
  

  
});
//-------------------------------------------------------------------------

//removing identical

allMedicineData.forEach((element){
    
transformString.add(element.toString());
    
});
allMedicineData = transformString.toSet().toList();//removed identical sets
// print(allMedicineData);

//-------------------------------------------------------------------------

List<String> convertedMedicineData = allMedicineData.map((s) => s as String).toList();//converting in to list string

//-------------------------------------------------------------------------








//checking weather their is a previous stored data in shared preference or not

if(saveAllmedicineData.getStringList("medicine") != null ){


  List tempMedicineData = saveAllmedicineData.getStringList("medicine");
  saveAllmedicineData.remove("medicine");
  tempMedicineData = tempMedicineData + convertedMedicineData;
  // print(tempMedicineData);

  //for duplicate
  tempMedicineData.forEach((element){
    
transformStringinsideif.add(element.toString());
    
});
tempMedicineData = transformStringinsideif.toSet().toList();//removed identical sets
// print(allMedicineData);
//-------------------------------------------------------------------------

List<String> secondconvertedMedicineData = tempMedicineData.map((s) => s as String).toList();

//-------------------------------------------------------------------------




  try {
    saveAllmedicineData.setStringList("medicine", secondconvertedMedicineData);
    
  } catch (e) {
    print(e);
  }
  print(saveAllmedicineData.getStringList("medicine"));

}
else{
  saveAllmedicineData.setStringList("medicine", convertedMedicineData);//else condition
  print(saveAllmedicineData.getStringList("medicine"));

}





}





//---------------------------------------------------------------------------------------------------------------------------------------------
//                                                  UPDATESCROLLDATA FUNCTION HERE
//
//this function update shedule on home screen and view medicine page
//
//
//---------------------------------------------------------------------------------------------------------------------------------------------

//updating home Screen shedule


updatesScrollData() async{
  List<Widget> homeScreenScrollWidget = [];
  List<Widget> showSheduleShowMedicine =  [];
  // List<Widget> showSheduleShowMedicineperfect = [];
  SharedPreferences saveAllmedicineData = await SharedPreferences.getInstance();
  final alldata = saveAllmedicineData.getStringList("medicine");
  print(alldata);
  final output  = [alldata.map(parseSetString)];
  medicineElement = output;

  // updateScrollWidget();
  for(int i = 0; i < output[0].length; i++){
        final outElement = output[0].elementAt(i);
        // print(outElement.elementAt(0));
        homeScreenScrollWidget.add(medicinWidget(outElement.elementAt(0), outElement.elementAt(1)));

        showShedule = homeScreenScrollWidget;

        showSheduleShowMedicine.add(editMedicine(outElement.elementAt(0), outElement.elementAt(1), false) );
        
        showSheduleShowMedicineperfect = showSheduleShowMedicine;     
  }
  print(showShedule);
  return showShedule;
  return showSheduleShowMedicineperfect;
  return showSheduleShowMedicine;
}









removeData(String name, String time)async{
  String combineData = "{$name, $time}";
  SharedPreferences saveAllmedicineData = await SharedPreferences.getInstance();
  final localremoveData = saveAllmedicineData.getStringList("medicine");
  print(localremoveData);
  localremoveData.remove(combineData);
  print(localremoveData);
  saveAllmedicineData.setStringList("medicine", localremoveData);
  final secData = saveAllmedicineData.getStringList("medicine");
  print("data in preference $secData");

}


