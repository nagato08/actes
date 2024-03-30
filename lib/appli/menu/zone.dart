import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Zones extends StatelessWidget {
  const Zones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.grey,
        title:const Text("Zones couvertes",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
        centerTitle: true,
        leading: IconButton(
          icon:const Icon(
            Icons.close,
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
              const SizedBox(height: 15,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Nom",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Email",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Telephone",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Mot de passe",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Mot de passe",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Mot de passe",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Mot de passe",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Mot de passe",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Mot de passe",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Mot de passe",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Mot de passe",style: TextStyle(fontWeight: FontWeight.w800),),
                  tileColor: Colors.white,
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                decoration:const BoxDecoration(
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
                child:const ListTile(
                  title: Text("Mot de passe",style: TextStyle(fontWeight: FontWeight.w800),),
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
