

import 'package:flutter/cupertino.dart';

List medicineNamesData = [ //medicine names stored here!! always updated from shared preferences
];


List<String> alarmTimes = [//temperary alarm time will be removed in future
  
];


List allMedicineData = []; //all medicine set with {medicineName, time}

List transformString = [];

List transformStringinsideif = [];

List<Set<String>> homeScreenhedule = [];

List<Set> homeScreenSheduleTemperoryData = [];

Set<String> parseSetString(String setString) => setString
    .substring(1, setString.length - 1)
    .split(', ')
    .map((part) => part.substring(0, part.length ))
    .toSet();

Set<String> parseSetStringdevided(String setString ) => setString
    .split(':')
    .toSet();

List<Iterable<Set<String>>> medicineElement = [];

List<Widget> showShedule = [];

List<Widget> showSheduleShowMedicine = [];

List<Widget> showSheduleShowMedicineperfect = [];

List localremoveData = [];

List timeList = [];

List<Widget> onscreenloadHome = [];


List<String> homeScreenupdateWidget = []; 

Map upcomingMap = new Map();

