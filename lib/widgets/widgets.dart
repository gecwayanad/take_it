import 'package:flutter/material.dart';

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

class Timelist extends StatelessWidget {
  String time;
  Timelist({this.time});
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
