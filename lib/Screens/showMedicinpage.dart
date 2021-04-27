import 'package:flutter/material.dart';
import 'package:take_it/widgets/widgets.dart';

class ShowMedicinepage extends StatefulWidget {
  @override
  _ShowMedicinepageState createState() => _ShowMedicinepageState();
}

class _ShowMedicinepageState extends State<ShowMedicinepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('asset/images/background.png'),
              fit: BoxFit.cover,
            )),
            child: ListView(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                          ),
                          onPressed: () {}),
                    )),
                MedicineEdit(
                  //importing widget
                  medicinename: 'Paracetamol',
                ),
              ],
            )),
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: Text(
              'Delet medicine',
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.red[300],
          ),
        ));
  }
}
