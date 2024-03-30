import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  CollectionReference _users = FirebaseFirestore.instance.collection("users");

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mdpController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();

  void _editUser(DocumentSnapshot user) {
    _nameController.text = user['name'];
    _mdpController.text = user['mdp'];
    _phoneController.text = user['phone'];
    _mailController.text = user['mail'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informations de\n l'utilisateur",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
        centerTitle: true,
        elevation:0,
        backgroundColor: Colors.grey.withOpacity(0.5),
        leading: IconButton(
          icon:const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("images_projet/user.jpg"),
              ),
              const SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,3),
                          color: Colors.blueGrey,
                          spreadRadius: 2,
                          blurRadius: 5
                      )
                    ]

                ),
                child: ListTile(
                  title: Text("Nom",style: TextStyle(fontWeight: FontWeight.w800),),
                  subtitle: Text("Nagato Uzumaki",style: TextStyle(fontWeight: FontWeight.w500),),
                  leading: Icon(CupertinoIcons.person),
                  tileColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,3),
                          color: Colors.blueGrey,
                          spreadRadius: 2,
                          blurRadius: 5
                      )
                    ]

                ),
                child: ListTile(
                  title: Text("Email",style: TextStyle(fontWeight: FontWeight.w800),),
                  subtitle: Text("tadjojeremie@gmail.com",style: TextStyle(fontWeight: FontWeight.w500),),
                  leading: Icon(CupertinoIcons.person),
                  tileColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,3),
                          color: Colors.blueGrey,
                          spreadRadius: 2,
                          blurRadius: 5
                      )
                    ]

                ),
                child: ListTile(
                  title: Text("Telephone",style: TextStyle(fontWeight: FontWeight.w800),),
                  subtitle: Text("675412976",style: TextStyle(fontWeight: FontWeight.w500),),
                  leading: Icon(CupertinoIcons.person),
                  tileColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,3),
                          color: Colors.blueGrey,
                          spreadRadius: 2,
                          blurRadius: 5
                      )
                    ]

                ),
                child: ListTile(
                  title: Text("Mot de passe",style: TextStyle(fontWeight: FontWeight.w800),),
                  subtitle: Text("nagato08",style: TextStyle(fontWeight: FontWeight.w500),),
                  leading: Icon(CupertinoIcons.person),
                  tileColor: Colors.white,
                ),
              ),

            ],
          ),
        ),
      ),

    );

  }
}
