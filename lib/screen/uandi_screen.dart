import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UAndIScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UAndIScreen();
}

class _UAndIScreen extends State<UAndIScreen> {
  DateTime selectedDate = DateTime.now();
  String dDayDateStr = "";

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    String dDayString = "";
    int dDay = DateTime.now().difference(selectedDate).inDays;
    if (dDay < 0) {
      dDayString = "D-${dDay.abs()}";
    } else if (dDay > 0) {
      dDayString = "D+${dDay.abs()}";
    } else {
      // nothing
    }

    return (Scaffold(
      backgroundColor: Colors.pink[100],
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "U&I",
                    style: TextStyle(
                        fontFamily: "Parisienne",
                        fontSize: 70,
                        color: Colors.white),
                  ),
                  const Text(
                    "우리 처음 만난날",
                    style: TextStyle(
                        fontFamily: "Sunflower",
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "${selectedDate.toLocal()}".split(" ")[0],
                      style: const TextStyle(
                          fontFamily: "Sunflower",
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 40,
                    ),
                    onPressed: () {
                      _selectDate(context);
                    },
                  ),
                  Text(
                    dDayString,
                    style: const TextStyle(
                        fontFamily: "Sunflower",
                        fontSize: 35,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: Image.asset("asset/u_and_i/middle_image.png"),
            ),
          ],
        ),
      ),
    ));
  }
}
