import 'package:flutter/material.dart';
import 'package:studentmark_sp/employee_shared.dart';

import 'const.dart';

class Printed_Sheet extends StatefulWidget {
  const Printed_Sheet({super.key});

  @override
  State<Printed_Sheet> createState() => _Printed_SheetState();
}

class _Printed_SheetState extends State<Printed_Sheet> {
  String? genderDropdownvalue;
  String? qualificationSelectedvalue;
  String _name = "";
  String _dob = "";
  String _email = "";
  String _pwd = "";
  String _perc = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  getValue() async {
    _name = await EmployeeShared.getstring(Name);
    _dob = await EmployeeShared.getstring(Dob);
    genderDropdownvalue = await EmployeeShared.getstring(Gender);
    _email = await EmployeeShared.getstring(Email);
    _pwd = await EmployeeShared.getstring(Password);
    qualificationSelectedvalue = await EmployeeShared.getstring(Qualification);
    _perc = await EmployeeShared.getstring(Percentage);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Printed Screen"),
          backgroundColor: Colors.pink,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NAME:$_name",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "DOB:$_dob",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "GENDER:$genderDropdownvalue",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "EMAIL:$_email",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "PASSWORD:$_pwd",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "QUALIFICATION:$qualificationSelectedvalue",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "PERCENTAGE:$_perc",
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
