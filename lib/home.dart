// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared extends StatefulWidget {
  const Shared({super.key});

  @override
  State<Shared> createState() => _SharedState();
}

class _SharedState extends State<Shared> {
  var name = TextEditingController();
  var department = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text("Name",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width-35,
                        child: TextFormField(
                          controller: name,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Row(
                    children: [
                      Text("Department",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width-35,
                        child: TextFormField(
                          controller: department,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Row(
                    children: [
                      Text("Email",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width-35,
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Row(
                    children: [
                      Text("Phone no",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width-35,
                        child: TextFormField(
                          controller: phone,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Row(
                    children: [
                      Text("Password",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width-35,
                        child: TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: ()async{
                  final spref = await SharedPreferences.getInstance();
                  spref.setString("name", name.text);
                  spref.setString("department", department.text);
                  spref.setString("email", email.text);
                  spref.setString("phone", phone.text);
                  spref.setString("password", password.text);
      
                  var nm = spref.getString("name");
                  var dep = spref.getString("department");
                  var mail = spref.getString("email");
                  var ph = spref.getString("phone");
                  var pass = spref.getString("password");
      
                  print(nm);
                  print(dep);
                  print(mail);
                  print(ph);
                  print(pass);
                },
                child: Container(
                  width: width-35,
                  height: height/13,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text("Subimt"),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}