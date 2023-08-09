import 'package:flutter/material.dart';
import 'package:studentmark_sp/employee_shared.dart';
import 'package:studentmark_sp/printedscreen.dart';

import 'const.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner:false,
    home: Employeequali_sp(),
  ));
}

class Employeequali_sp extends StatefulWidget {
  const Employeequali_sp({super.key});

  @override
  State<Employeequali_sp> createState() => _Employeequali_spState();
}

class _Employeequali_spState extends State<Employeequali_sp> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController percentagecontroller = TextEditingController();
  List<String> gender = ["Mela", "Female", "Other"];
  String? genderDropdownvalue;
  List<String> qualification = ["Ug", "Pg", "12th", "10th"];
  String? qualificationSelectedvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Employees Qualification",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Enter Name", style: TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                    ),
                    labelText: "Enter Name",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Enter DOB", style: TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: dobcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                    ),
                    labelText: "Enter DOB",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Enter Gender", style: TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                //dropdown code coming soon for this postion...
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DropdownButton<String>(
                      value: genderDropdownvalue,
                      isExpanded: true,
                      icon: const Icon(Icons.arrow_drop_down_sharp),
                      items:
                          gender.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          genderDropdownvalue = value!;
                        });
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Enter Email", style: TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                    ),
                    labelText: "Enter Email",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Enter Password", style: TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                    ),
                    labelText: "Enter Password",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Enter Qualification",
                    style: TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                //Dropdown code coming soon for this postion...
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DropdownButton(
                      value: qualificationSelectedvalue,
                      isExpanded: true,
                      icon: const Icon(Icons.arrow_drop_down_sharp),
                      items: qualification
                          .map<DropdownMenuItem<String>>((String quavalue) {
                        return DropdownMenuItem<String>(
                            value: quavalue, child: Text(quavalue));
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          qualificationSelectedvalue = value!;
                        });
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Enter Percentage", style: TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: percentagecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2),
                    ),
                    labelText: "Enter Percentage",
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: Colors.white),
                        onPressed: () async {
                          await EmployeeShared.savestring(
                              Name, namecontroller.text);
                          await EmployeeShared.savestring(
                              Dob, dobcontroller.text);
                          await EmployeeShared.savestring(
                              Gender, genderDropdownvalue ?? "");
                          await EmployeeShared.savestring(
                              Email, emailcontroller.text);
                          await EmployeeShared.savestring(
                              Password, passwordcontroller.text);
                          await EmployeeShared.savestring(
                              Qualification, qualificationSelectedvalue ?? "");
                          await EmployeeShared.savestring(
                              Percentage, percentagecontroller.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Printed_Sheet()));
                        },
                        child: const Text(
                          "Print",
                          style: TextStyle(fontSize: 25, color: Colors.purple),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
